set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv32)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(ARES_BUILDROOT_HOST "/home/lovro/ARES/buildroot/output/host" CACHE PATH "")
set(CMAKE_C_COMPILER
    "${ARES_BUILDROOT_HOST}/bin/riscv32-buildroot-linux-gnu-gcc")
set(CMAKE_CXX_COMPILER
    "${ARES_BUILDROOT_HOST}/bin/riscv32-buildroot-linux-gnu-g++")

# The Buildroot compiler wrappers supply their own sysroot. Prevent CMake from
# selecting libraries or headers from the x86 development host.
set(CMAKE_FIND_ROOT_PATH "${ARES_BUILDROOT_HOST}/riscv32-buildroot-linux-gnu/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
