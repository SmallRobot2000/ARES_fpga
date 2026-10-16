// SPDX-License-Identifier: GPL-2.0-only
#include <ares/gl_context.hpp>
#include <GL/gl.h>

#include <chrono>
#include <csignal>
#include <cstdio>
#include <cstdlib>
#include <cstring>

namespace
{
    volatile std::sig_atomic_t running = 1;

    void stop(int)
    {
        running = 0;
    }

    void drawFrame(float angleX, float angleY, float angleZ)
    {
        /*
        glClearColor(0.03f, 0.04f, 0.10f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);


        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        glRotatef(angle, 0.3f, 0.0f, 1.0f);

        */

        glMatrixMode(GL_PROJECTION);
        glLoadIdentity();
        const float aspect = 512.0f / 384.0f;
        glFrustum(-0.1f * aspect, 0.1f * aspect,
                  -0.1f, 0.1f, 0.1f, 100.0f);

        // Each frame
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glEnable(GL_DEPTH_TEST);

        glMatrixMode(GL_MODELVIEW);
        glLoadIdentity();
        glTranslatef(0.0f, 0.0f, -1.5f); // Move object in front of camera
        glRotatef(angleX, 1.0f, 0.0f, 0.0f);
        glRotatef(angleY, 0.0f, 1.0f, 0.0f);
        glRotatef(angleZ, 0.0f, 0.0f, 1.0f);

        // 3D
        glBegin(GL_TRIANGLES);

        // Main body - left half
        glColor3f(1.0f, 0.15f, 0.10f);
        glVertex3f(0.0f, 0.95f, 0.0f);
        glColor3f(0.15f, 0.55f, 1.0f);
        glVertex3f(-0.28f, -0.65f, 0.0f);
        glColor3f(0.8f, 0.15f, 0.8f);
        glVertex3f(0.0f, -0.45f, 0.2f);

        // Main body - right half
        glColor3f(1.0f, 0.15f, 0.10f);
        glVertex3f(0.0f, 0.95f, 0.0f);
        glColor3f(0.8f, 0.15f, 0.8f);
        glVertex3f(0.0f, -0.45f, 0.2f);
        glColor3f(0.15f, 0.55f, 1.0f);
        glVertex3f(0.28f, -0.65f, 0.0f);

        // Left wing
        glColor3f(0.0f, 1.0f, 0.4f);
        glVertex3f(-0.18f, 0.15f, 0.0f);
        glColor3f(0.0f, 0.35f, 1.0f);
        glVertex3f(-0.95f, -0.75f, 0.0f);
        glColor3f(0.8f, 0.1f, 0.9f);
        glVertex3f(-0.22f, -0.65f, 0.0f);

        // Right wing
        glColor3f(0.0f, 1.0f, 0.4f);
        glVertex3f(0.18f, 0.15f, 0.0f);
        glColor3f(0.8f, 0.1f, 0.9f);
        glVertex3f(0.22f, -0.65f, 0.0f);
        glColor3f(0.0f, 0.35f, 1.0f);
        glVertex3f(0.95f, -0.75f, 0.0f);

        // Cockpit - front
        glColor3f(0.1f, 1.0f, 1.0f);
        glVertex3f(0.0f, 0.42f, 0.24f);
        glColor3f(0.05f, 0.25f, 0.9f);
        glVertex3f(-0.16f, -0.20f, 0.15f);
        glColor3f(0.3f, 0.8f, 1.0f);
        glVertex3f(0.0f, -0.28f, 0.38f);

        // Cockpit - right
        glColor3f(0.1f, 1.0f, 1.0f);
        glVertex3f(0.0f, 0.42f, 0.24f);
        glColor3f(0.3f, 0.8f, 1.0f);
        glVertex3f(0.0f, -0.28f, 0.38f);
        glColor3f(0.05f, 0.25f, 0.9f);
        glVertex3f(0.16f, -0.20f, 0.15f);

        // Left tail fin
        glColor3f(1.0f, 0.8f, 0.05f);
        glVertex3f(-0.22f, -0.40f, 0.0f);
        glColor3f(1.0f, 0.2f, 0.05f);
        glVertex3f(-0.40f, -0.90f, 0.32f);
        glColor3f(0.8f, 0.1f, 0.3f);
        glVertex3f(-0.20f, -0.75f, 0.0f);

        // Right tail fin
        glColor3f(1.0f, 0.8f, 0.05f);
        glVertex3f(0.22f, -0.40f, 0.0f);
        glColor3f(0.8f, 0.1f, 0.3f);
        glVertex3f(0.20f, -0.75f, 0.0f);
        glColor3f(1.0f, 0.2f, 0.05f);
        glVertex3f(0.40f, -0.90f, 0.32f);

        // Engine exhaust - left
        glColor3f(1.0f, 0.9f, 0.1f);
        glVertex3f(-0.20f, -0.70f, 0.05f);
        glColor3f(1.0f, 0.2f, 0.0f);
        glVertex3f(-0.10f, -1.10f, 0.05f);
        glColor3f(1.0f, 0.5f, 0.0f);
        glVertex3f(-0.02f, -0.70f, 0.05f);

        // Engine exhaust - right
        glColor3f(1.0f, 0.9f, 0.1f);
        glVertex3f(0.02f, -0.70f, 0.05f);
        glColor3f(1.0f, 0.5f, 0.0f);
        glVertex3f(0.10f, -1.10f, 0.05f);
        glColor3f(1.0f, 0.2f, 0.0f);
        glVertex3f(0.20f, -0.70f, 0.05f);

        glEnd();
    }

    uint64_t parseFrameLimit(int argc, char **argv)
    {
        if (argc == 1)
            return 0;
        if (argc != 3 || std::strcmp(argv[1], "--frames") != 0)
        {
            std::fprintf(stderr, "Usage: %s [--frames COUNT]\n", argv[0]);
            std::exit(EXIT_FAILURE);
        }
        char *end = nullptr;
        const unsigned long value = std::strtoul(argv[2], &end, 10);
        if (!end || *end || value == 0)
        {
            std::fputs("--frames requires a positive integer\n", stderr);
            std::exit(EXIT_FAILURE);
        }
        return value;
    }
}

int main(int argc, char **argv)
{
    const uint64_t frameLimit = parseFrameLimit(argc, argv);
    std::signal(SIGINT, stop);
    std::signal(SIGTERM, stop);

    ares::GLContext context;
    if (!context)
        return 1;

    context.setVSync(false);

    std::printf("GL_VENDOR   : %s\n", glGetString(GL_VENDOR));
    std::printf("GL_RENDERER : %s\n", glGetString(GL_RENDERER));
    std::printf("GL_VERSION  : %s\n", glGetString(GL_VERSION));
    std::puts("Animating a double-buffered triangle; press Ctrl-C to stop.");

    glViewport(0, 0, ares::GLContext::width, ares::GLContext::height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1.0, 1.0, -1.0, 1.0, -1.0, 1.0);
    glDisable(GL_DEPTH_TEST);
    glDisable(GL_STENCIL_TEST);
    glDisable(GL_CULL_FACE);
    glDisable(GL_TEXTURE_2D);
    glShadeModel(GL_SMOOTH);

    using Clock = std::chrono::steady_clock;
    const auto programStart = Clock::now();
    auto reportStart = programStart;
    uint64_t reportFrames = 0;

    while (running && (!frameLimit || context.performanceCounters().frames < frameLimit))
    {
        const auto now = Clock::now();
        const float seconds = std::chrono::duration<float>(now - programStart).count();
        drawFrame(seconds * 45.0f, seconds * 30.0f, seconds * 20.0f);

        const GLenum error = glGetError();
        if (error != GL_NO_ERROR)
        {
            std::fprintf(stderr, "OpenGL error 0x%04x while drawing\n", error);
            return 1;
        }
        context.swapBuffers();
        ++reportFrames;

        const auto afterSwap = Clock::now();
        const double reportSeconds = std::chrono::duration<double>(afterSwap - reportStart).count();
        if (reportSeconds >= 2.0)
        {
            const auto counters = context.performanceCounters();
            const double averageWaitMs = counters.frames
                                             ? counters.swapWaitSeconds * 1000.0 / counters.frames
                                             : 0.0;
            std::printf("FPS %.2f | frames %llu | MM2S %llu transfers, %llu bytes | swap wait %.2f ms/frame\n",
                        reportFrames / reportSeconds,
                        static_cast<unsigned long long>(counters.frames),
                        static_cast<unsigned long long>(counters.mm2sTransfers),
                        static_cast<unsigned long long>(counters.mm2sBytes),
                        averageWaitMs);
            std::fflush(stdout);
            reportStart = afterSwap;
            reportFrames = 0;
        }
    }

    const auto counters = context.performanceCounters();
    const double elapsed = std::chrono::duration<double>(Clock::now() - programStart).count();
    std::printf("Stopped: %llu frames in %.2f s (%.2f FPS), MM2S %llu transfers / %llu bytes, S2MM %llu transfers\n",
                static_cast<unsigned long long>(counters.frames), elapsed,
                elapsed > 0.0 ? counters.frames / elapsed : 0.0,
                static_cast<unsigned long long>(counters.mm2sTransfers),
                static_cast<unsigned long long>(counters.mm2sBytes),
                static_cast<unsigned long long>(counters.s2mmTransfers));
    return 0;
}
