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

static inline int rix_check_scratch_reserved(const char *dt_root, const char *iomem_path)
{
	unsigned char reg[8], cell[4];
	char path[1024], line[512], name[128];
	struct stat st;
	FILE *file;
	unsigned long long start, end;
	const unsigned long long first = RIX_SCRATCH_BASE;
	const unsigned long long last = first + RIX_SCRATCH_SIZE - 1;
	int covered = 0;

	if (!rix_node_enabled(dt_root, "/reserved-memory") ||
	    !rix_node_enabled(dt_root, RIX_SCRATCH_NODE) ||
	    rix_read_property(dt_root, "/reserved-memory/#address-cells", cell, 4) ||
	    rix_be32(cell) != 1 ||
	    rix_read_property(dt_root, "/reserved-memory/#size-cells", cell, 4) ||
	    rix_be32(cell) != 1 ||
	    rix_read_property(dt_root, "/reserved-memory/ranges", cell, 0) ||
	    rix_read_property(dt_root, RIX_SCRATCH_NODE "/reg", reg, 8) ||
	    rix_be32(reg) != RIX_SCRATCH_BASE || rix_be32(reg + 4) != RIX_SCRATCH_SIZE ||
	    rix_read_property(dt_root, RIX_SCRATCH_NODE "/no-map", cell, 0)) {
		fprintf(stderr, "REFUSED: booted DT lacks the enabled 1 MiB no-map scratch reservation at 0x97f00000.\n"
			"Install tree-rasterix-memory.dtb as tree.dtb and reboot first.\n");
		return -1;
	}
	if (snprintf(path, sizeof(path), "%s%s/reusable", dt_root, RIX_SCRATCH_NODE) >= (int)sizeof(path))
		return -1;
	if (!stat(path, &st) || errno != ENOENT) {
		fprintf(stderr, "REFUSED: scratch memory is reusable or its status cannot be checked.\n");
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
			fprintf(stderr, "REFUSED: scratch overlaps %llx-%llx : %s\n", start, end, name);
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
		fprintf(stderr, "REFUSED: Linux does not show the whole scratch region as Reserved.\n"
			"Run as root, check /proc/iomem and reserved-memory boot messages; no override is provided.\n");
		return -1;
	}
	puts("PASS: DT and Linux reserve 0x97f00000-0x97ffffff for scratch memory");
	return 0;
}

#endif
