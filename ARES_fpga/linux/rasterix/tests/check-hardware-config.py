#!/usr/bin/env python3
"""Check hardware features that RasterIX does not expose as C++ constants."""
from pathlib import Path
import re
root = Path(__file__).resolve().parents[3]
rtl = (root / 'ARES_fpga.srcs/sources_1/new/RasterIXwrapper.v').read_text()
cmake = (root / 'linux/rasterix/CMakeLists.txt').read_text()
for feature, expected in {'FRAMEBUFFER_SIZE_IN_PIXEL_LG':16,
        'ENABLE_DEPTH_BUFFER':1, 'ENABLE_STENCIL_BUFFER':1,
        'ENABLE_FOG':1, 'ENABLE_MIPMAPPING':0, 'ENABLE_TEXTURE_FILTERING':1}.items():
    assert re.search(r'\.' + feature + r'\(\s*' + str(expected) + r'\s*\)', rtl), feature
for feature, expected in {'MAX_DISPLAY_WIDTH':'512', 'MAX_DISPLAY_HEIGHT':'384',
        'FRAMEBUFFER_SIZE_IN_PIXEL_LG':'16', 'ENABLE_MIPMAPPING':'false',
        'AUTOLOAD_INTERNAL_FRAMEBUFFER':'false'}.items():
    assert re.search(r'set\(RIX_CORE_' + feature + r'\s+' + expected + r'\s', cmake), feature
print('PASS: RTL/software dimensions, strips, mipmapping and hardware feature set')
