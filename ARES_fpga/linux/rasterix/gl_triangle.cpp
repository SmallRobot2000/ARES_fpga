// SPDX-License-Identifier: GPL-2.0-only
#include <ares/gl_context.hpp>
#include <GL/gl.h>

#include <cstdio>

namespace
{
bool checkGl(const char* stage)
{
    const GLenum error = glGetError();
    if (error == GL_NO_ERROR)
        return true;
    std::fprintf(stderr, "OpenGL error 0x%04x after %s\n", error, stage);
    return false;
}
}

int main()
{
    ares::GLContext context;
    if (!context)
        return 1;

    std::printf("GL_VENDOR   : %s\n", glGetString(GL_VENDOR));
    std::printf("GL_RENDERER : %s\n", glGetString(GL_RENDERER));
    std::printf("GL_VERSION  : %s\n", glGetString(GL_VERSION));

    glViewport(0, 0, ares::GLContext::width, ares::GLContext::height);
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

    glClearColor(0.03f, 0.04f, 0.10f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    glBegin(GL_TRIANGLES);
    glColor3f(1.0f, 0.05f, 0.05f);
    glVertex3f(0.0f, 0.78f, 0.0f);
    glColor3f(0.05f, 1.0f, 0.05f);
    glVertex3f(-0.78f, -0.68f, 0.0f);
    glColor3f(0.05f, 0.25f, 1.0f);
    glVertex3f(0.78f, -0.68f, 0.0f);
    glEnd();

    if (!checkGl("triangle construction"))
        return 1;
    std::puts("Submitting three 128-line RasterIX triangle lists...");
    std::fflush(stdout);
    context.swapBuffers();

    std::puts("PASS: RasterIX OpenGL clear and RGB triangle frame completed");
    std::puts("The VGA output should show one smooth RGB triangle on a dark blue background.");
    return 0;
}
