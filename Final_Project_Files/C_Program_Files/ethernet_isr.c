#include <stddef.h>
#include <stdint.h>
#include "string.h"
#include "system_globals.h"
#include "ee109-lib/ethernet.h"
#include "ee109-lib/vga.h"
#include "ee109-lib/hex.h"
#include "ee109-lib/switches.h"
#include "ee109-lib/green_leds.h"
#include "lab2.h"


/* Defined in system_globals.c */
extern volatile struct ethernet_frame *rx_frame;
static volatile uint32_t counter = 0;

/**
 * Ethernet Receive Frame - Interrupt Service Routine                                
 *                                                                          
 */
void ethernet_rx_isr (void *context, unsigned int id)
{
  /* Process data in ethernet receive frame. */
	struct ethernet_frame *final_rx_frame = ethernet_get_rx_frame ();
	struct ethernet_frame *local_rx_frame = ethernet_local_rx_frame ();
	int offset = ((final_rx_frame->data)[0])<<9;
	short *vga_front_buf = (short *)vga_get_front_buffer();
	short *final_buf_remote = (short *)(vga_front_buf)+offset;
	memcpy (final_buf_remote, final_rx_frame->data+1, sizeof(short)*VGA_RES_X);
	if (get_split ()) {
		offset = ((local_rx_frame->data)[0])<<9;
		int new_offset = offset + VGA_RES_X*sizeof(short)*(VGA_RES_Y)/2.5;
		short *final_buf_local = (short *)(vga_front_buf)+ new_offset;
		memcpy (final_buf_local, local_rx_frame->data+1, sizeof(short)*VGA_RES_X);
	}
	counter++;
	hex_write_7to4 (counter, NUM_BASE_10);
}
 