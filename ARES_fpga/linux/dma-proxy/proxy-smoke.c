/* SPDX-License-Identifier: GPL-2.0-only */
/* Default: ABI checks. --nop: TX only. --loopback/--stress: TX + RX. */
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>

#include "dma-proxy.h"
#include "rasterix-loopback.h"

static int loopback(int *fd, struct channel_buffer **buf, unsigned int bytes,
		    unsigned int iteration)
{
	int index = iteration % BUFFER_COUNT;
	struct channel_buffer *tx = &buf[0][index];
	struct channel_buffer *rx = &buf[1][index];
	unsigned int words = bytes / sizeof(uint32_t), i;

	if (bytes + 8 > BUFFER_SIZE || bytes + 16 > BUFFER_SIZE || (bytes & 7))
		return -1;
	rix_make_loopback(tx->buffer, bytes, iteration);
	for (i = 0; i < words; i++)
		rx->buffer[i] = ~rix_test_word(i, iteration);
	for (i = 0; i < 4; i++)
		rx->buffer[words + i] = RIX_LOOPBACK_GUARD;
	tx->length = bytes + 8;
	rx->length = bytes;

	/* S2MM must be accepting responses before MM2S sends the command. */
	if (ioctl(fd[1], START_XFER, &index) < 0) {
		perror("Loopback RX start");
		return -1;
	}
	if (ioctl(fd[0], XFER, &index) < 0) {
		perror("Loopback TX transfer");
		fprintf(stderr, "TX status: %d\n", tx->status);
		return -1;
	}
	if (ioctl(fd[1], FINISH_XFER, &index) < 0) {
		perror("Loopback RX completion");
		fprintf(stderr, "RX status: %d\n", rx->status);
		return -1;
	}
	if (tx->status != PROXY_NO_ERROR || rx->status != PROXY_NO_ERROR) {
		fprintf(stderr, "Loopback status: TX=%d RX=%d\n", tx->status, rx->status);
		return -1;
	}
	for (i = 0; i < words; i++) {
		uint32_t expected = rix_test_word(i, iteration);

		if (rx->buffer[i] != expected) {
			fprintf(stderr, "Mismatch: round %u, buffer %d, word %u: expected %08x got %08x\n",
				iteration, index, i, expected, rx->buffer[i]);
			return -1;
		}
	}
	for (i = 0; i < 4; i++) {
		if (rx->buffer[words + i] != RIX_LOOPBACK_GUARD) {
			fprintf(stderr, "RX guard overwritten after %u-byte payload\n", bytes);
			return -1;
		}
	}
	return 0;
}

static int expect_error(int fd, unsigned long op, int *index, int expected)
{
	errno = 0;
	if (ioctl(fd, op, index) != -1 || errno != expected) {
		fprintf(stderr, "Unexpected ioctl result: wanted errno %d, got %d\n",
			expected, errno);
		return -1;
	}
	return 0;
}

int main(int argc, char **argv)
{
	const char *names[] = { "/dev/dma_proxy_tx", "/dev/dma_proxy_rx" };
	const size_t bytes = sizeof(struct channel_buffer) * BUFFER_COUNT;
	struct channel_buffer *buf[2] = { MAP_FAILED, MAP_FAILED };
	int fd[2] = { -1, -1 };
	int nop = argc == 2 && !strcmp(argv[1], "--nop");
	int echo = argc == 2 && !strcmp(argv[1], "--loopback");
	int stress = argc >= 2 && !strcmp(argv[1], "--stress");
	unsigned long rounds = stress ? 100 : 1;
	int result = 1, i, index, duplicate;
	void *bad;

	if (argc > 3 || (argc > 1 && !nop && !echo && !stress) ||
	    (argc == 3 && !stress)) {
		fprintf(stderr, "Usage: %s [--nop | --loopback | --stress [1..100000]]\n", argv[0]);
		return 2;
	}
	if (argc == 3) {
		char *end;

		errno = 0;
		rounds = strtoul(argv[2], &end, 10);
		if (errno || *end || end == argv[2] || rounds < 1 || rounds > 100000) {
			fprintf(stderr, "Stress count must be between 1 and 100000\n");
			return 2;
		}
	}
	for (i = 0; i < 2; i++) {
		fd[i] = open(names[i], O_RDWR | O_CLOEXEC);
		if (fd[i] < 0) {
			perror(names[i]);
			goto out;
		}
		duplicate = open(names[i], O_RDWR | O_CLOEXEC);
		if (duplicate >= 0 || errno != EBUSY) {
			if (duplicate >= 0)
				close(duplicate);
			fprintf(stderr, "Exclusive-open check failed\n");
			goto out;
		}
		bad = mmap(NULL, bytes + 4096, PROT_READ | PROT_WRITE,
			   MAP_SHARED, fd[i], 0);
		if (bad != MAP_FAILED) {
			munmap(bad, bytes + 4096);
			fprintf(stderr, "Oversize mmap unexpectedly succeeded\n");
			goto out;
		}
		buf[i] = mmap(NULL, bytes, PROT_READ | PROT_WRITE, MAP_SHARED, fd[i], 0);
		if (buf[i] == MAP_FAILED) {
			perror("mmap");
			goto out;
		}
		index = -1;
		if (expect_error(fd[i], START_XFER, &index, EINVAL))
			goto out;
		index = BUFFER_COUNT;
		if (expect_error(fd[i], START_XFER, &index, EINVAL))
			goto out;
		index = 0;
		if (expect_error(fd[i], 0, &index, ENOTTY) ||
		    expect_error(fd[i], START_XFER, NULL, EFAULT) ||
		    expect_error(fd[i], FINISH_XFER, &index, EINVAL))
			goto out;
		buf[i][0].length = 0;
		if (expect_error(fd[i], START_XFER, &index, EINVAL))
			goto out;
		buf[i][0].length = BUFFER_SIZE + 4;
		if (expect_error(fd[i], START_XFER, &index, EINVAL))
			goto out;
		buf[i][0].length = 2;
		if (expect_error(fd[i], START_XFER, &index, EINVAL))
			goto out;
		buf[i][0].status = PROXY_NO_ERROR;
		buf[i][0].length = 0;
		printf("PASS: %s open/mmap/argument validation\n", names[i]);
	}
	if (nop) {
		/* RasterIX_IF's FrameStreamingCore decodes a zero word as NOP.
		 * Two words make an aligned 8-byte MM2S transaction. No RX packet.
		 */
		buf[0][0].buffer[0] = 0;
		buf[0][0].buffer[1] = 0;
		buf[0][0].length = 8;
		index = 0;
		if (ioctl(fd[0], XFER, &index) < 0) {
			perror("NOP transfer");
			fprintf(stderr, "Proxy status: %d\n", buf[0][0].status);
			goto out;
		}
		if (buf[0][0].status != PROXY_NO_ERROR) {
			fprintf(stderr, "NOP completion status: %d\n", buf[0][0].status);
			goto out;
		}
		puts("PASS: 8-byte MM2S NOP transfer completed; S2MM not exercised");
	} else if (echo || stress) {
		unsigned int round;
		unsigned long long total = 0;

		for (round = 0; round < rounds; round++) {
			unsigned int payload = stress ? rix_loopback_sizes[round % 4] : 64;

			if (loopback(fd, buf, payload, round)) {
				fprintf(stderr, "Loopback failed; stop testing and inspect dmesg/ILA.\n"
					"After a stream timeout, reset/reboot the FPGA system before retrying.\n");
				goto out;
			}
			total += payload;
			if (stress && (round + 1) % 25 == 0)
				printf("Verified %u/%lu loopback packets\n", round + 1, rounds);
		}
		printf("PASS: %lu RasterIX stream loopback packet(s), %llu payload bytes verified; MM2S and S2MM completed\n",
		       rounds, total);
	} else {
		puts("PASS: no DMA transfers submitted (use --nop for the TX test)");
	}
	result = 0;
out:
	for (i = 0; i < 2; i++) {
		if (buf[i] != MAP_FAILED)
			munmap(buf[i], bytes);
		if (fd[i] >= 0)
			close(fd[i]);
	}
	return result;
}
