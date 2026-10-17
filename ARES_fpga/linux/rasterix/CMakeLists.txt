cmake_minimum_required(VERSION 3.14)
project(ares_rasterix_gl LANGUAGES C CXX)

include(CheckIPOSupported)
option(ARES_ENABLE_LTO "Enable link-time optimization in release builds" ON)
if(ARES_ENABLE_LTO)
    check_ipo_supported(RESULT ARES_LTO_SUPPORTED OUTPUT ARES_LTO_ERROR)
    if(ARES_LTO_SUPPORTED)
        set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE ON)
    else()
        message(WARNING "Link-time optimization is unavailable: ${ARES_LTO_ERROR}")
    endif()
endif()

set(RASTERIX_SOURCE "/home/lovro/ARES/RasterIX" CACHE PATH
    "Path to the RasterIX source tree")
if(NOT EXISTS "${RASTERIX_SOURCE}/CMakeLists.txt")
    message(FATAL_ERROR "RasterIX source tree not found at ${RASTERIX_SOURCE}")
endif()

# These values must match ARES_RasterIXWrapper and the reserved-memory map.
set(RIX_BUILD_NATIVE OFF CACHE BOOL "" FORCE)
set(RIX_BUILD_ZYNQ_EMBEDDED_LINUX OFF CACHE BOOL "" FORCE)
set(RIX_BUILD_RPPICO OFF CACHE BOOL "" FORCE)
set(RIX_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(RIX_BUILD_TESTS_VERILATOR OFF CACHE BOOL "" FORCE)
set(RIX_BUILD_TESTS_SOFTWARE OFF CACHE BOOL "" FORCE)
set(RIX_BUILD_SHARED_LIBRARY OFF CACHE BOOL "" FORCE)
set(RIX_DRIVER_DMA_PROXY OFF CACHE BOOL "" FORCE)
set(RIX_ENABLE_SPDLOG ON CACHE BOOL "" FORCE)

set(RIX_CORE_TMU_COUNT 1 CACHE STRING "" FORCE)
set(RIX_CORE_MAX_TEXTURE_SIZE 256 CACHE STRING "" FORCE)
set(RIX_CORE_ENABLE_MIPMAPPING false CACHE STRING "" FORCE)
set(RIX_CORE_MAX_DISPLAY_WIDTH 512 CACHE STRING "" FORCE)
set(RIX_CORE_MAX_DISPLAY_HEIGHT 384 CACHE STRING "" FORCE)
set(RIX_CORE_FRAMEBUFFER_SIZE_IN_PIXEL_LG 15 CACHE STRING "" FORCE)
set(RIX_CORE_ENABLE_ATTRIBUTE_SCALING true CACHE STRING "" FORCE)
set(RIX_CORE_NUMBER_OF_TEXTURE_PAGES 2048 CACHE STRING "" FORCE)
set(RIX_CORE_NUMBER_OF_TEXTURES 256 CACHE STRING "" FORCE)
set(RIX_CORE_TEXTURE_PAGE_SIZE 2048 CACHE STRING "" FORCE)

# RasterIX software uses device-relative addresses and adds this physical base.
set(RIX_CORE_GRAM_MEMORY_LOC 0x97800000 CACHE STRING "" FORCE)
set(RIX_CORE_COLOR_BUFFER_LOC_0 0x00400000 CACHE STRING "" FORCE)
set(RIX_CORE_COLOR_BUFFER_LOC_1 0x00400000 CACHE STRING "" FORCE)
set(RIX_CORE_COLOR_BUFFER_LOC_2 0x00500000 CACHE STRING "" FORCE)
# Reserved auxiliary slot. These addresses are safe if framebuffer autoload is
# enabled later: RGB565 depth consumes 0x60000 bytes and stencil follows it.
# Autoload stays disabled until external stencil packing/alignment is verified.
set(RIX_CORE_DEPTH_BUFFER_LOC 0x00600000 CACHE STRING "" FORCE)
set(RIX_CORE_STENCIL_BUFFER_LOC 0x00660000 CACHE STRING "" FORCE)

set(RIX_CORE_THREADED_RASTERIZATION true CACHE STRING "" FORCE)
set(RIX_CORE_ENABLE_VSYNC true CACHE STRING "" FORCE)
set(RIX_CORE_THREADED_RASTERIZATION_DISPLAY_LIST_SIZE 262144 CACHE STRING "" FORCE)
set(RIX_CORE_MAX_VBO_COUNT 32 CACHE STRING "" FORCE)
set(RIX_CORE_AUTOLOAD_INTERNAL_FRAMEBUFFER false CACHE STRING "" FORCE)
set(RIX_CORE_SOFTWARE_RENDERING false CACHE STRING "" FORCE)

add_subdirectory("${RASTERIX_SOURCE}" rasterix-build EXCLUDE_FROM_ALL)

add_library(ares-gl-runtime STATIC
    ares_dma_proxy_bus.cpp
    ares_gl_context.cpp
)
target_include_directories(ares-gl-runtime
    PUBLIC
        "${CMAKE_CURRENT_SOURCE_DIR}/include"
        "${RASTERIX_SOURCE}/lib/gl"
    PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/../dma-proxy"
    "${RASTERIX_SOURCE}/lib/driver"
    "${RASTERIX_SOURCE}/lib/threadrunner"
)
target_link_libraries(ares-gl-runtime PUBLIC
    gl spdlog::spdlog span threadrunner pthread
)
target_compile_features(ares-gl-runtime PUBLIC cxx_std_17)
target_compile_options(ares-gl-runtime PRIVATE -Wall -Wextra -Werror)

add_executable(ares-gl-triangle gl_triangle.cpp)
target_link_libraries(ares-gl-triangle PRIVATE ares-gl-runtime)
target_compile_options(ares-gl-triangle PRIVATE -Wall -Wextra -Werror)
target_link_options(ares-gl-triangle PRIVATE -static)

add_executable(ares-gl-animate gl_animated_triangle.cpp)
target_link_libraries(ares-gl-animate PRIVATE ares-gl-runtime)
target_compile_options(ares-gl-animate PRIVATE -Wall -Wextra -Werror)
target_link_options(ares-gl-animate PRIVATE -static)

add_executable(ares-gl-game ares-gl-game.cpp kbd_hw.c)
target_link_libraries(ares-gl-game PRIVATE ares-gl-runtime)
target_compile_options(ares-gl-game PRIVATE -Wall -Wextra -Werror)
target_link_options(ares-gl-game PRIVATE -static)

add_executable(ares-gl-texture-check tests/texture_upload.cpp)
target_include_directories(ares-gl-texture-check PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/../dma-proxy"
    "${RASTERIX_SOURCE}/lib/driver"
    "${RASTERIX_SOURCE}/lib/threadrunner")
target_link_libraries(ares-gl-texture-check PRIVATE ares-gl-runtime)
target_compile_options(ares-gl-texture-check PRIVATE -Wall -Wextra -Werror)
target_link_options(ares-gl-texture-check PRIVATE -static)

if(NOT CMAKE_CROSSCOMPILING)
    enable_testing()
    add_test(NAME texture-rgb565 COMMAND ares-gl-texture-check)
    add_test(NAME texture-rgb565-white COMMAND ares-gl-texture-check --white)
    add_test(NAME texture-rgba COMMAND ares-gl-texture-check --rgba)
    add_test(NAME texture-rgba-white COMMAND ares-gl-texture-check --rgba --white)
    add_executable(ares-render-config-tests
        "${RASTERIX_SOURCE}/unittest/software/test_RenderConfigs.cpp")
    target_link_libraries(ares-render-config-tests PRIVATE gl)
    target_compile_features(ares-render-config-tests PRIVATE cxx_std_17)
    add_test(NAME render-config-strips COMMAND ares-render-config-tests)
    add_executable(ares-gl-capture tests/capture_triangle.cpp)
    target_include_directories(ares-gl-capture PRIVATE
        "${RASTERIX_SOURCE}/lib/gl"
        "${RASTERIX_SOURCE}/lib/driver"
        "${RASTERIX_SOURCE}/lib/threadrunner"
    )
    target_link_libraries(ares-gl-capture PRIVATE
        gl spdlog::spdlog span threadrunner pthread
    )
    target_compile_features(ares-gl-capture PRIVATE cxx_std_17)
    target_compile_options(ares-gl-capture PRIVATE -Wall -Wextra -Werror)
    add_test(NAME triangle-lists COMMAND ares-gl-capture)
endif()
