// SPDX-License-Identifier: GPL-2.0-only
#ifndef ARES_GL_CONTEXT_HPP
#define ARES_GL_CONTEXT_HPP

#include <cstdint>
#include <memory>

namespace ares
{

struct GLPerformanceCounters
{
    uint64_t frames { 0 };
    uint64_t mm2sTransfers { 0 };
    uint64_t mm2sBytes { 0 };
    uint64_t s2mmTransfers { 0 };
    uint64_t s2mmBytes { 0 };
    double swapWaitSeconds { 0.0 };
};

// Owns the single fullscreen RasterIX context on ARES. Application rendering
// uses the ordinary OpenGL entry points from <GL/gl.h>; swapBuffers() is the
// board-specific equivalent of glXSwapBuffers/SDL_GL_SwapWindow.
class GLContext
{
public:
    static constexpr unsigned int width = 512;
    static constexpr unsigned int height = 384;

    GLContext();
    ~GLContext();

    GLContext(const GLContext&) = delete;
    GLContext& operator=(const GLContext&) = delete;

    explicit operator bool() const { return m_impl != nullptr; }
    void setVSync(bool enabled);
    void swapBuffers();
    void finish();
    GLPerformanceCounters performanceCounters() const;
    void resetPerformanceCounters();

private:
    struct Impl;
    std::unique_ptr<Impl> m_impl;
    uint64_t m_frames { 0 };
    uint64_t m_txTransferBase { 0 };
    uint64_t m_txByteBase { 0 };
    uint64_t m_rxTransferBase { 0 };
    uint64_t m_rxByteBase { 0 };
    double m_swapWaitSeconds { 0.0 };
};

} // namespace ares

#endif
