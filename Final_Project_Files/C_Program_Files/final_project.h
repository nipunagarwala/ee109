#include <unistd.h>
#include <stdbool.h>
#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include "string.h"

/*ENUMs defined  */
 typedef enum {
	VGA, LCD
} screen_t;


/*Functions Exported */
void display_mac_addr (void);
void display_on_screen (int screen, int max_index);