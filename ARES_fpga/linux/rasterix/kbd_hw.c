#include <kbd.h>

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/ioctl.h>
#include <unistd.h>

static int keyboard_fd = -1;

static int find_keyboard(const char *wanted_name)
{
    char dev[64];
    char name[256];

    for (int i = 0; i < 32; ++i) {
        snprintf(dev, sizeof(dev), "/dev/input/event%d", i);
        int fd = open(dev, O_RDONLY | O_NONBLOCK);
        if (fd < 0)
            continue;

        memset(name, 0, sizeof(name));
        if (ioctl(fd, EVIOCGNAME(sizeof(name)), name) >= 0 &&
            strcmp(name, wanted_name) == 0) {
            printf("Keyboard found: %s (%s)\n", dev, name);
            return fd;
        }
        close(fd);
    }
    return -1;
}

int keyboard_init(void)
{
    keyboard_fd = find_keyboard("ARES MSX Keyboard");
    if (keyboard_fd < 0) {
        fprintf(stderr, "ERROR: ARES MSX Keyboard not found\n");
        return -1;
    }
    return 0;
}

int keyboard_get_event(keyboard_event_t *event)
{
    struct input_event ev;

    if (keyboard_fd < 0 || event == NULL)
        return -1;

    for (;;) {
        const ssize_t n = read(keyboard_fd, &ev, sizeof(ev));
        if (n < 0) {
            if (errno == EAGAIN || errno == EWOULDBLOCK)
                return 0;
            if (errno == EINTR)
                continue;
            return -1;
        }
        if (n != (ssize_t)sizeof(ev))
            return -1;
        if (ev.type != EV_KEY)
            continue;

        event->key = ev.code;
        event->value = ev.value;
        return 1;
    }
}
