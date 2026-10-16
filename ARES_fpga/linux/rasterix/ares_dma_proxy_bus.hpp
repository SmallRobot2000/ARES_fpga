// SPDX-License-Identifier: GPL-2.0-only
#ifndef ARES_DMA_PROXY_BUS_HPP
#define ARES_DMA_PROXY_BUS_HPP

#include "IBusConnector.hpp"
#include "dma-proxy.h"

#include <cstddef>
#include <cstdint>

namespace ares
{

// Preserve the DMA-proxy ABI values without leaking its generic macros into
// RasterIX headers (which use BUFFER_SIZE as a template parameter name).
inline constexpr std::size_t proxyBufferSize = BUFFER_SIZE;
inline constexpr uint8_t proxyBufferCount = BUFFER_COUNT;

#undef BUFFER_SIZE
#undef BUFFER_COUNT
#undef TX_BUFFER_COUNT
#undef RX_BUFFER_COUNT
#undef BUFFER_INCREMENT

class DMAProxyBus final : public rr::IBusConnector
{
public:
    DMAProxyBus();
    ~DMAProxyBus() override;

    DMAProxyBus(const DMAProxyBus&) = delete;
    DMAProxyBus& operator=(const DMAProxyBus&) = delete;

    void writeData(uint8_t index, uint32_t size, uint32_t offset = 0) override;
    void readData(uint8_t index, uint32_t size) override;
    void blockUntilTransferIsComplete() override;
    tcb::span<uint8_t> requestWriteBuffer(uint8_t index) override;
    tcb::span<uint8_t> requestReadBuffer(uint8_t index) override;
    uint8_t getWriteBufferCount() const override;
    uint8_t getReadBufferCount() const override;

    uint64_t txTransferCount() const { return m_txTransferCount; }
    uint64_t txByteCount() const { return m_txByteCount; }
    uint64_t rxTransferCount() const { return m_rxTransferCount; }
    uint64_t rxByteCount() const { return m_rxByteCount; }

private:
    struct Channel
    {
        channel_buffer* buffers { nullptr };
        int fd { -1 };
        const char* path { nullptr };
    };

    static void openChannel(Channel& channel, const char* path);
    static void closeChannel(Channel& channel);
    static void fail(const char* operation, const char* path);
    void start(Channel& channel, uint8_t index, uint32_t size);

    Channel m_tx;
    Channel m_rx;
    Channel* m_busyChannel { nullptr };
    int m_busyIndex { -1 };
    uint32_t m_busySize { 0 };
    uint64_t m_txTransferCount { 0 };
    uint64_t m_txByteCount { 0 };
    uint64_t m_rxTransferCount { 0 };
    uint64_t m_rxByteCount { 0 };
};

} // namespace ares

#endif
