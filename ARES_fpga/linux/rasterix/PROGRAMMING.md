# Programming RasterIX with ordinary OpenGL calls

ARES now has a small platform layer that owns the DMA proxy, RasterIX context,
worker threads, VSync, and hardware-completion waits. Application code includes
the conventional OpenGL headers and uses normal fixed-function OpenGL calls.

```cpp
#include <ares/gl_context.hpp>
#include <GL/gl.h>

int main()
{
    ares::GLContext display;
    if (!display)
        return 1;

    glViewport(0, 0, ares::GLContext::width, ares::GLContext::height);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);

    for (;;) {
        glClearColor(0.0f, 0.0f, 0.2f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glBegin(GL_TRIANGLES);
        glColor3f(1, 0, 0); glVertex2f( 0.0f,  0.8f);
        glColor3f(0, 1, 0); glVertex2f(-0.8f, -0.7f);
        glColor3f(0, 0, 1); glVertex2f( 0.8f, -0.7f);
        glEnd();

        display.swapBuffers();
    }
}
```

Add the program to this directory's `CMakeLists.txt` like this:

```cmake
add_executable(my-gl-program my_gl_program.cpp)
target_link_libraries(my-gl-program PRIVATE ares-gl-runtime)
target_link_options(my-gl-program PRIVATE -static)
```

Then add the target to `build.sh`, or build it directly:

```sh
cmake -S linux/rasterix -B linux/rasterix/build-rv32 \
  -DCMAKE_TOOLCHAIN_FILE=linux/rasterix/riscv32-buildroot-toolchain.cmake \
  -DCMAKE_BUILD_TYPE=Release
cmake --build linux/rasterix/build-rv32 --target my-gl-program -j"$(nproc)"
```

`ares::GLContext::swapBuffers()` submits the frame, waits for all three strip
lists and the VSync framebuffer swap, and updates DMA/performance counters.
Use `performanceCounters()` to read completed frames, MM2S/S2MM transfer counts,
bytes, and accumulated swap-wait time. Use `finish()` when an explicit hardware
completion fence is needed. RasterIX's current `glFinish()` and `glFlush()`
entry points do not provide that fence. These counters exclude the three setup
lists and three clean-teardown lists visible in `/proc/interrupts`.

## API scope

The current core reports OpenGL ES-CM 1.1 and implements a useful subset of the
classic OpenGL fixed-function API: immediate-mode triangles, vertex arrays,
matrices, colors, culling, blending, lighting, and 2D textures. It does not
implement modern OpenGL shaders, GLSL, VAOs, or programmable pipelines. Code
written for OpenGL 1.x is the closest portable source style.

The present ARES memory map safely reserves the two RGB565 color buffers. The
16-bit internal depth strip buffer is already present in the FPGA and may be
used when depth is cleared every frame; with `AUTOLOAD_INTERNAL_FRAMEBUFFER`
disabled it is not stored in DDR. Stencil, fog, and texture filtering are
enabled in RTL; mipmapping is disabled. Clear depth and stencil every
frame before using them. Textures have a reserved 4 MiB pool at `0x97800000`.
The auxiliary slot at `0x97e00000` reserves depth/stencil storage, but external
autoload remains disabled pending validation of stencil packing/alignment.
Depth is assigned relative `0x00600000`, stencil relative `0x00660000`.
Rendering uses 512x384 RGB565 (`0x60000` bytes per frame) and scales to fullscreen
640x480 VGA. There is no X11/Wayland window or keyboard event layer yet.
