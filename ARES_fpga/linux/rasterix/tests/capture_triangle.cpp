#include "IBusConnector.hpp"
#include "RIXGL.hpp"
#include "StdThreadRunner.hpp"
#include "gl.h"
#include "renderer/devicedatauploader/DeviceDataUploader.hpp"
#include "renderer/threadedvertextransformer/ThreadedVertexTransformer.hpp"

#include <array>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

namespace
{
constexpr std::size_t bufferSize = 1024 * 1024;
constexpr std::size_t bufferCount = 21;

class CaptureBus final : public rr::IBusConnector
{
public:
    CaptureBus()
    {
        for (auto& buffer : m_buffers)
            buffer.resize(bufferSize);
    }

    void writeData(uint8_t index, uint32_t size, uint32_t offset = 0) override
    {
        if (index >= bufferCount || offset || size < 8 || size > bufferSize)
            std::abort();
        inspect(m_buffers[index].data(), size);
        ++m_transfers;
        ++m_currentBatch;
    }
    void readData(uint8_t, uint32_t) override { std::abort(); }
    void blockUntilTransferIsComplete() override
    {
        if (m_currentBatch > m_maxBatch)
            m_maxBatch = m_currentBatch;
        m_currentBatch = 0;
    }
    tcb::span<uint8_t> requestWriteBuffer(uint8_t index) override
    {
        return { m_buffers.at(index) };
    }
    tcb::span<uint8_t> requestReadBuffer(uint8_t) override { return {}; }
    uint8_t getWriteBufferCount() const override { return bufferCount; }
    uint8_t getReadBufferCount() const override { return 0; }

    unsigned int transfers() const { return m_transfers; }
    unsigned int triangles() const { return m_triangles; }
    unsigned int swaps() const { return m_swaps; }
    unsigned int maxBatch() const { return m_maxBatch; }
    const std::vector<uint16_t>& yOffsets() const { return m_yOffsets; }

private:
    void inspect(const uint8_t* bytes, uint32_t size)
    {
        const auto* words = reinterpret_cast<const uint32_t*>(bytes);
        if ((words[0] & 0xf0000000U) != 0x90000000U)
            std::abort();
        const std::size_t end = size / 4;
        std::size_t pos = 2;
        unsigned int listTriangles = 0;
        while (pos < end) {
            const uint32_t command = words[pos++];
            switch (command & 0xf0000000U) {
            case 0x00000000U:
                break;
            case 0x20000000U:
                if (command & 4U) {
                    if (command != 0x23000094U)
                        std::abort();
                    ++m_swaps;
                } else if (((command >> 8) & 0xfffffU) != 65536U) {
                    std::abort();
                }
                break;
            case 0x10000000U:
                if ((command & 0x1fU) == 8U) {
                    const uint16_t yOffset = (words[pos] >> 16) & 0x7ffU;
                    m_yOffsets.push_back(yOffset);
                    std::printf("  y-offset register: %u\n", yOffset);
                }
                if ((command & 0x1fU) == 9U) {
                    if (words[pos] != 0x00800200U) // 512 x 128 per strip
                        std::abort();
                    std::printf("  resolution register: 0x%08x\n", words[pos]);
                }
                ++pos;
                break;
            case 0x30000000U: {
                const std::size_t payloadWords = (command & 0x3ffU) / 4;
                if (pos + payloadWords > end || payloadWords < 3)
                    std::abort();
                const uint32_t start = words[pos + 1];
                const uint32_t finish = words[pos + 2];
                std::printf("  triangle bbox x=%u..%u y=%u..%u, %zu-byte descriptor\n",
                    start & 0xffffU, finish & 0xffffU,
                    start >> 16, finish >> 16, payloadWords * 4);
                pos += payloadWords;
                ++listTriangles;
                ++m_triangles;
                break;
            }
            case 0x40000000U:
                pos += (command & 0x1ffU) / 4;
                break;
            case 0x50000000U:
                pos += (command & 0x7ffffU) / 4;
                break;
            default:
                std::abort();
            }
            if (pos > end)
                std::abort();
        }
        std::printf("display list %u: %u bytes, %u triangle(s)\n",
            m_transfers, size - 8, listTriangles);
    }

    std::array<std::vector<uint8_t>, bufferCount> m_buffers;
    unsigned int m_transfers { 0 };
    unsigned int m_triangles { 0 };
    unsigned int m_swaps { 0 };
    unsigned int m_currentBatch { 0 };
    unsigned int m_maxBatch { 0 };
    std::vector<uint16_t> m_yOffsets;
};
}

int main()
{
    CaptureBus bus;
    rr::devicedatauploader::DeviceDataUploader uploader { bus };
    rr::StdThreadRunner workerThread;
    rr::StdThreadRunner uploadThread;
    rr::threadedvertextransformer::ThreadedVertexTransformer device {
        uploader, workerThread, uploadThread
    };
    if (!rr::RIXGL::createInstance(device))
        return 1;
    if (!rr::RIXGL::getInstance().setRenderResolution(512, 384))
        return 1;
    rr::RIXGL::getInstance().enableVSync(true);

    glViewport(0, 0, 512, 384);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1.0, 1.0, -1.0, 1.0, -1.0, 1.0);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glDisable(GL_DEPTH_TEST);
    glDisable(GL_STENCIL_TEST);
    glDisable(GL_CULL_FACE);
    glDisable(GL_TEXTURE_2D);
    glShadeModel(GL_SMOOTH);
    for (unsigned int frame = 0; frame < 3; ++frame) {
        glClearColor(0.03f, 0.04f, 0.10f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        glRotatef(frame * 15.0f, 0.0f, 0.0f, 1.0f);
        glBegin(GL_TRIANGLES);
        glColor3f(1.0f, 0.05f, 0.05f);
        glVertex3f(0.0f, 0.78f, 0.0f);
        glColor3f(0.05f, 1.0f, 0.05f);
        glVertex3f(-0.78f, -0.68f, 0.0f);
        glColor3f(0.05f, 0.25f, 1.0f);
        glVertex3f(0.78f, -0.68f, 0.0f);
        glEnd();
        rr::RIXGL::getInstance().swapDisplayList();
    }
    device.blockUntilDeviceIsIdle();
    uploadThread.wait();
    uploader.blockUntilDeviceIsIdle();
    rr::RIXGL::destroy();
    device.blockUntilDeviceIsIdle();
    uploadThread.wait();
    uploader.blockUntilDeviceIsIdle();
    std::printf("captured %u display lists in batches up to %u, %u strip-triangle commands, %u swaps, and %zu Y offsets\n",
        bus.transfers(), bus.maxBatch(), bus.triangles(), bus.swaps(), bus.yOffsets().size());

    // The first rendered frame carries one explicit Y-offset write per strip.
    // Following frames also restore the preceding render state, so each list
    // contains the restored write followed by the new-frame write.
    bool offsetsCorrect = bus.yOffsets().size() == 18;
    std::size_t offsetIndex = 0;
    static constexpr unsigned int writesPerStripByPhase[] = { 1, 2, 2, 1 };
    for (const unsigned int writesPerStrip : writesPerStripByPhase) {
        for (unsigned int strip = 0; offsetsCorrect && strip < 3; ++strip) {
            for (unsigned int write = 0; write < writesPerStrip; ++write)
                offsetsCorrect = bus.yOffsets()[offsetIndex++] == (2 - strip) * 128;
        }
    }

    // Three rendered frames plus the destructor's final flush/swap.
    if (bus.transfers() != 15 || bus.maxBatch() != 3 || bus.triangles() < 6
        || bus.swaps() != 4 || !offsetsCorrect) {
        std::fputs("FAIL: unexpected strip-list construction\n", stderr);
        return 1;
    }
    std::puts("PASS: valid strip lists submitted as three-transfer DMA batches");
    return 0;
}
