/* SPDX-License-Identifier: GPL-2.0-only */
/* Fail closed before any memory-test DMA. No bypass/address override option. */
#ifndef ARES_SCRATCH_RESERVATION_H
#define ARES_SCRATCH_RESERVATION_H

#include <errno.h>
#include <stdio.h>
#include <string.h>
#include <strings.h>
#include <sys/stat.h>

#include "rasterix-memory.h"

static inline int rix_read_property(const char *root, const char *property,
				    void *data, size_t bytes)
{
	char path[1024];
	FILE *file;
	int good;

	if (snprintf(path, sizeof(path), "%s%s", root, property) >= (int)sizeof(path))
		return -1;
	file = fopen(path, "rb");
	if (!file)
		return -1;
	good = fread(data, 1, bytes, file) == bytes && fgetc(file) == EOF && !ferror(file);
	fclose(file);
	return good ? 0 : -1;
}

static inline uint32_t rix_be32(const unsigned char *p)
{
	return (uint32_t)p[0] << 24 | (uint32_t)p[1] << 16 |
		(uint32_t)p[2] << 8 | p[3];
}

static inline int rix_node_enabled(const char *root, const char *node)
{
	char path[1024], status[8] = { 0 };
	FILE *file;
	size_t n;

	if (snprintf(path, sizeof(path), "%s%s/status", root, node) >= (int)sizeof(path))
		return 0;
	file = fopen(path, "rb");
	if (!file)
		return errno == ENOENT;
	n = fread(status, 1, sizeof(status), file);
	int good = !ferror(file) && ((n == 5 && !memcmp(status, "okay", 5)) ||
				   (n == 3 && !memcmp(status, "ok", 3)));
	fclose(file);
	return good;
}

static inline int rix_check_reserved_region(const char *dt_root, const char *iomem_path,
				    const char *node, uint32_t base, uint32_t size,
				    const char *description, const char *dtb_name)
{
	unsigned char reg[8], cell[4];
	char path[1024], line[512], name[128];
	struct stat st;
	FILE *file;
	unsigned long long start, end;
	const unsigned long long first = base;
	const unsigned long long last = first + size - 1;
	int covered = 0;

	if (!rix_node_enabled(dt_root, "/reserved-memory") ||
	    !rix_node_enabled(dt_root, node) ||
	    rix_read_property(dt_root, "/reserved-memory/#address-cells", cell, 4) ||
	    rix_be32(cell) != 1 ||
	    rix_read_property(dt_root, "/reserved-memory/#size-cells", cell, 4) ||
	    rix_be32(cell) != 1 ||
	    rix_read_property(dt_root, "/reserved-memory/ranges", cell, 0) ||
	    snprintf(path, sizeof(path), "%s/reg", node) >= (int)sizeof(path) ||
	    rix_read_property(dt_root, path, reg, 8) ||
	    rix_be32(reg) != base || rix_be32(reg + 4) != size ||
	    snprintf(path, sizeof(path), "%s/no-map", node) >= (int)sizeof(path) ||
	    rix_read_property(dt_root, path, cell, 0)) {
		fprintf(stderr, "REFUSED: booted DT lacks the exact enabled no-map %s reservation at 0x%08x-0x%08x.\n"
			"Install %s as tree.dtb and reboot first.\n",
			description, base, base + size - 1, dtb_name);
		return -1;
	}
	if (snprintf(path, sizeof(path), "%s%s/reusable", dt_root, node) >= (int)sizeof(path))
		return -1;
	if (!stat(path, &st) || errno != ENOENT) {
		fprintf(stderr, "REFUSED: %s memory is reusable or its status cannot be checked.\n",
			description);
		return -1;
	}
	file = fopen(iomem_path, "r");
	if (!file) {
		perror("Cannot verify /proc/iomem");
		return -1;
	}
	while (fgets(line, sizeof(line), file)) {
		if (sscanf(line, "%llx-%llx : %127[^\n]", &start, &end, name) != 3)
			continue;
		if (end < first || start > last)
			continue;
		if (strcasecmp(name, "Reserved")) {
			fprintf(stderr, "REFUSED: %s overlaps %llx-%llx : %s\n",
				description, start, end, name);
			fclose(file);
			return -1;
		}
		if (start <= first && end >= last)
			covered = 1;
	}
	if (ferror(file))
		covered = 0;
	fclose(file);
	if (!covered) {
		fprintf(stderr, "REFUSED: Linux does not show the whole %s region as Reserved.\n"
			"Run as root, check /proc/iomem and reserved-memory boot messages; no override is provided.\n",
			description);
		return -1;
	}
	printf("PASS: DT and Linux reserve 0x%08x-0x%08x for %s memory\n",
	       base, base + size - 1, description);
	return 0;
}

static inline int rix_check_scratch_reserved(const char *dt_root, const char *iomem_path)
{
	return rix_check_reserved_region(dt_root, iomem_path, RIX_SCRATCH_NODE,
		RIX_SCRATCH_BASE, RIX_SCRATCH_SIZE, "scratch",
		"tree-rasterix-memory.dtb");
}

#endif
