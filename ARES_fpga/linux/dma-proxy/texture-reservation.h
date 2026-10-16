/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef ARES_TEXTURE_RESERVATION_H
#define ARES_TEXTURE_RESERVATION_H

#include "scratch-reservation.h"

#define RIX_TEXTURE_BASE UINT32_C(0x97800000)
#define RIX_TEXTURE_SIZE UINT32_C(0x00400000)
#define RIX_TEXTURE_NODE "/reserved-memory/rasterix-textures@97800000"
#define RIX_AUXILIARY_BASE UINT32_C(0x97e00000)
#define RIX_AUXILIARY_SIZE UINT32_C(0x00100000)
#define RIX_AUXILIARY_NODE "/reserved-memory/rasterix-auxiliary@97e00000"

static inline int rix_check_texture_reserved(const char *dt_root,
				       const char *iomem_path)
{
	return rix_check_reserved_region(dt_root, iomem_path, RIX_TEXTURE_NODE,
		RIX_TEXTURE_BASE, RIX_TEXTURE_SIZE, "RasterIX texture",
		"tree-rasterix-display.dtb");
}

static inline int rix_check_auxiliary_reserved(const char *dt_root,
				         const char *iomem_path)
{
	return rix_check_reserved_region(dt_root, iomem_path, RIX_AUXILIARY_NODE,
		RIX_AUXILIARY_BASE, RIX_AUXILIARY_SIZE,
		"RasterIX depth/stencil", "tree-rasterix-display.dtb");
}

#endif
