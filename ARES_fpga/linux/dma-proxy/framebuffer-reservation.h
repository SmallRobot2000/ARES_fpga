/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef ARES_FRAMEBUFFER_RESERVATION_H
#define ARES_FRAMEBUFFER_RESERVATION_H

#include "rasterix-display.h"
#include "scratch-reservation.h"

static inline int rix_check_framebuffer_reserved(const char *dt_root,
					 const char *iomem_path)
{
	return rix_check_reserved_region(dt_root, iomem_path, RIX_FRAMEBUFFER_NODE,
		RIX_FRAMEBUFFER_BASE, RIX_FRAMEBUFFER_RESERVATION_SIZE,
		"RasterIX framebuffer", "tree-rasterix-display.dtb");
}

#endif
