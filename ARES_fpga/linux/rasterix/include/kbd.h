#ifndef ARES_KEYBOARD_H
#define ARES_KEYBOARD_H

#include <linux/input.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
    uint16_t key;
    /* Linux EV_KEY value: 0 release, 1 press, 2 autorepeat. */
    int value;
} keyboard_event_t;

int keyboard_init(void);
int keyboard_get_event(keyboard_event_t *event);

#ifdef __cplusplus
}
#endif

#endif
