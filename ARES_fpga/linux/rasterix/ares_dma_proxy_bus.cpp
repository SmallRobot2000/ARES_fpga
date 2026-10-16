// SPDX-License-Identifier: GPL-2.0-only
#include "ares_dma_proxy_bus.hpp"

#include <cerrno>
#include <cstdio>
#include <cstdlib>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>

namespace ares
{

namespace
{
constexpr std::size_t mappingSize = sizeof(channel_buffer) * proxyBufferCount;
}

void DMAProxyBus::fail(const char* operation, const char* path)
{
    const int saved = errno;
    std::fprintf(stderr, "ARES DMA proxy: %s %s failed: errno %d\n",
        operation, path ? path : "", saved);
    std::exit(EXIT_FAILURE);
}

void DMAProxyBus::openChannel(Channel& channel, const char* path)
{
    channel.path = path;
    channel.fd = open(path, O_RDWR | O_CLOEXEC);
    if (channel.fd < 0)
        fail("open", path);
    void* mapping = mmap(nullptr, mappingSize, PROT_READ | PROT_WRITE,
        MAP_SHARED, channel.fd, 0);
    if (mapping == MAP_FAILED)
        fail("mmap", path);
    channel.buffers = static_cast<channel_buffer*>(mapping);
}

void DMAProxyBus::closeChannel(Channel& channel)
{
    if (channel.buffers) {
        munmap(channel.buffers, mappingSize);
        channel.buffers = nullptr;
    }
    if (channel.fd >= 0) {
        close(channel.fd);
        channel.fd = -1;
    }
}

DMAProxyBus::DMAProxyBus()
{
    openChannel(m_tx, "/dev/dma_proxy_tx");
    openChannel(m_rx, "/dev/dma_proxy_rx");
}

DMAProxyBus::~DMAProxyBus()
{
    blockUntilTransferIsComplete();
    closeChannel(m_rx);
    closeChannel(m_tx);
}

void DMAProxyBus::start(Channel& channel, uint8_t index, uint32_t size)
{
    if (index >= proxyBufferCount || !size || size > proxyBufferSize || (size & 3U)) {
        errno = EINVAL;
        fail("invalid transfer", channel.path);
    }
    blockUntilTransferIsComplete();
    int bufferIndex = index;
    channel.buffers[index].length = size;
    if (ioctl(channel.fd, START_XFER, &bufferIndex) < 0)
        fail("START_XFER", channel.path);
    if (channel.buffers[index].status != channel_buffer::PROXY_NO_ERROR) {
        errno = EIO;
        fail("START_XFER status", channel.path);
    }
    m_busyChannel = &channel;
    m_busyIndex = bufferIndex;
    m_busySize = size;
}

void DMAProxyBus::writeData(uint8_t index, uint32_t size, uint32_t offset)
{
    if (offset != 0) {
        errno = EINVAL;
        fail("nonzero write offset", m_tx.path);
    }
    start(m_tx, index, size);
}

void DMAProxyBus::readData(uint8_t index, uint32_t size)
{
    start(m_rx, index, size);
}

void DMAProxyBus::blockUntilTransferIsComplete()
{
    if (!m_busyChannel)
        return;
    if (ioctl(m_busyChannel->fd, FINISH_XFER, &m_busyIndex) < 0)
        fail("FINISH_XFER", m_busyChannel->path);
    if (m_busyChannel->buffers[m_busyIndex].status != channel_buffer::PROXY_NO_ERROR) {
        errno = EIO;
        fail("FINISH_XFER status", m_busyChannel->path);
    }
    if (m_busyChannel == &m_tx) {
        ++m_txTransferCount;
        m_txByteCount += m_busySize;
    } else {
        ++m_rxTransferCount;
        m_rxByteCount += m_busySize;
    }
    m_busyChannel = nullptr;
    m_busyIndex = -1;
    m_busySize = 0;
}

tcb::span<uint8_t> DMAProxyBus::requestWriteBuffer(uint8_t index)
{
    if (index >= proxyBufferCount)
        return {};
    return { reinterpret_cast<uint8_t*>(m_tx.buffers[index].buffer), proxyBufferSize };
}

tcb::span<uint8_t> DMAProxyBus::requestReadBuffer(uint8_t index)
{
    if (index >= proxyBufferCount)
        return {};
    return { reinterpret_cast<uint8_t*>(m_rx.buffers[index].buffer), proxyBufferSize };
}

uint8_t DMAProxyBus::getWriteBufferCount() const
{
    return proxyBufferCount;
}

uint8_t DMAProxyBus::getReadBufferCount() const
{
    return proxyBufferCount;
}

} // namespace ares
