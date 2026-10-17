// SPDX-License-Identifier: GPL-2.0-only
#include <ares/gl_context.hpp>

#include "ares_dma_proxy_bus.hpp"
#include "framebuffer-reservation.h"
#include "texture-reservation.h"

#include "RIXGL.hpp"
#include "RenderConfigs.hpp"
#include "StdThreadRunner.hpp"
#include "renderer/devicedatauploader/DeviceDataUploader.hpp"
#include "renderer/threadedvertextransformer/ThreadedVertexTransformer.hpp"

#include <chrono>
#include <cstdio>

namespace ares
{

static_assert(GLContext::width == 512 && GLContext::height == 384);
static_assert(rr::RenderConfig::MAX_DISPLAY_WIDTH == GLContext::width);
static_assert(rr::RenderConfig::MAX_DISPLAY_HEIGHT == GLContext::height);
static_assert(rr::RenderConfig::FRAMEBUFFER_SIZE_IN_PIXEL == 65536);
static_assert(rr::RenderConfig::FRAMEBUFFER_SIZE_IN_PIXEL_LG == 16);
static_assert(rr::RenderConfig::getDisplayLines() == 3);
static_assert(rr::RenderConfig::TMU_COUNT == 1);
static_assert(!rr::RenderConfig::ENABLE_MIPMAPPING);
// Depth/stencil/fog and texture filtering have no RenderConfig switches;
// tests/check-hardware-config.py verifies those RTL-only feature parameters.
static_assert(rr::RenderConfig::TEXTURE_PAGE_SIZE == 2048);
static_assert(rr::RenderConfig::NUMBER_OF_TEXTURE_PAGES *
        rr::RenderConfig::TEXTURE_PAGE_SIZE == RIX_TEXTURE_SIZE);
static_assert(rr::RenderConfig::GRAM_MEMORY_LOC == RIX_TEXTURE_BASE);
static_assert(rr::RenderConfig::GRAM_MEMORY_LOC
        + rr::RenderConfig::DEPTH_BUFFER_LOC == RIX_AUXILIARY_BASE);
static_assert(rr::RenderConfig::GRAM_MEMORY_LOC
        + rr::RenderConfig::STENCIL_BUFFER_LOC >= RIX_AUXILIARY_BASE);
static_assert(rr::RenderConfig::GRAM_MEMORY_LOC
        + rr::RenderConfig::STENCIL_BUFFER_LOC <
        RIX_AUXILIARY_BASE + RIX_AUXILIARY_SIZE);
static_assert(rr::RenderConfig::GRAM_MEMORY_LOC
        + rr::RenderConfig::COLOR_BUFFER_LOC_1
    == RIX_FRAMEBUFFER_BASE);
static_assert(rr::RenderConfig::GRAM_MEMORY_LOC
        + rr::RenderConfig::COLOR_BUFFER_LOC_2
    == RIX_FRAMEBUFFER_BASE + RIX_FRAMEBUFFER_SLOT_SIZE);
static_assert(proxyBufferCount >= rr::RenderConfig::getDisplayLines() * 2 + 1);

struct GLContext::Impl
{
    DMAProxyBus bus;
    rr::devicedatauploader::DeviceDataUploader uploader { bus };
    rr::StdThreadRunner workerThread;
    rr::StdThreadRunner uploadThread;
    rr::threadedvertextransformer::ThreadedVertexTransformer device {
        uploader, workerThread, uploadThread
    };

    void finish()
    {
        device.blockUntilDeviceIsIdle();
        uploadThread.wait();
        uploader.blockUntilDeviceIsIdle();
    }
};

GLContext::GLContext()
{
    if (rix_check_texture_reserved("/sys/firmware/devicetree/base", "/proc/iomem") ||
        rix_check_auxiliary_reserved("/sys/firmware/devicetree/base", "/proc/iomem") ||
        rix_check_framebuffer_reserved("/sys/firmware/devicetree/base", "/proc/iomem"))
        return;

    m_impl = std::make_unique<Impl>();
    if (!rr::RIXGL::createInstance(m_impl->device)
        || !rr::RIXGL::getInstance().setRenderResolution(width, height)) {
        std::fputs("Could not create the ARES RasterIX OpenGL context\n", stderr);
        rr::RIXGL::destroy();
        m_impl.reset();
        return;
    }

    rr::RIXGL::getInstance().enableVSync(true);
    finish();
    resetPerformanceCounters();
}

GLContext::~GLContext()
{
    if (!m_impl)
        return;
    finish();
    rr::RIXGL::destroy();
    finish();
}

void GLContext::setVSync(bool enabled)
{
    if (m_impl)
        rr::RIXGL::getInstance().enableVSync(enabled);
}

void GLContext::finish()
{
    if (m_impl)
        m_impl->finish();
}

void GLContext::swapBuffers()
{
    if (!m_impl)
        return;
    const auto start = std::chrono::steady_clock::now();
    rr::RIXGL::getInstance().swapDisplayList();
    finish();
    const auto end = std::chrono::steady_clock::now();
    m_swapWaitSeconds += std::chrono::duration<double>(end - start).count();
    ++m_frames;
}

GLPerformanceCounters GLContext::performanceCounters() const
{
    if (!m_impl)
        return {};
    return {
        m_frames,
        m_impl->bus.txTransferCount() - m_txTransferBase,
        m_impl->bus.txByteCount() - m_txByteBase,
        m_impl->bus.rxTransferCount() - m_rxTransferBase,
        m_impl->bus.rxByteCount() - m_rxByteBase,
        m_swapWaitSeconds
    };
}

void GLContext::resetPerformanceCounters()
{
    if (!m_impl)
        return;
    finish();
    m_frames = 0;
    m_txTransferBase = m_impl->bus.txTransferCount();
    m_txByteBase = m_impl->bus.txByteCount();
    m_rxTransferBase = m_impl->bus.rxTransferCount();
    m_rxByteBase = m_impl->bus.rxByteCount();
    m_swapWaitSeconds = 0.0;
}

} // namespace ares
