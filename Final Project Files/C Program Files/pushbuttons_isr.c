#include "system_globals.h"
#include "ee109-lib/pushbuttons.h"
#include "lab2.h"
#include "ee109-lib/switches.h"
#include "ee109-lib/camera.h"
#include "ee109-lib/lcd.h"
#include "ee109-lib/vga.h"



/********************************
 ****  GLOBALS DECLARATIONS  ****
 ********************************/
 
/* Defined in system_globals.c */
static volatile int source = -1;
static volatile int dest = -1;
static volatile int done = 0;
static volatile int disp = 0;
static volatile int split = 0;


/****************************
 ****  PUBLIC FUNCTIONS  ****
 ****************************/
 static int getIndex (void);
 static bool IsPowerOfTwo(int x);
/**
 * Function: pushbuttons_isr                        
 * ------------------------------------------
 * Interrupt service routine for pushbuttons.
 */
void pushbuttons_isr (void *context, unsigned int id)
{
  uint32_t buttons_current = pushbuttons_get_edge_capture ();
  if ((buttons_current & BUTTON1) && (source == -1)) {
  	source = getIndex ();
  } else if ((buttons_current & BUTTON1) && (source >= 0) && (dest == -1)) {
  	dest = getIndex ();
  } else if ((buttons_current & BUTTON1) && (source >= 0) && (dest >= 0)) {
    split = !split;
  }
  if (buttons_current & BUTTON2) {
  	if (!done & !disp) {
  		display_on_screen ((screen_t)VGA, dest);
  		display_on_screen ((screen_t)LCD, source);
  		done = 1;
	 } else if (done & !disp) {
  		done = 0;
      disp = 1;
      lcd_clear_text ();
      camera_enable_dma(1);
      vga_clear_text();
      vga_enable_dma(1);
  	} else if (!done & disp) {
      disp = 0;
     clear_lcd (0,0, LCD_RES_X, LCD_RES_Y);
      clear_vga ();
      source = -1;
      dest = -1;
      split = 0;
      display_mac_addr ();
    }
  }
  if (buttons_current & BUTTON3) {
      toggle_video_streams ();
  }
  pushbuttons_clear_edge_capture ();
}

int get_source(void) {
  return source;
}


int get_dest(void) {
  return dest; 
}


int get_disp(void) {
  return disp;
}

int get_split(void) {
  return split;
}

static int getIndex (void) {
	int current = switches_get_positions ();
  	if (IsPowerOfTwo (current)) {
  		if (current == SWITCH0) return 0;
  		if (current == SWITCH1) return 1;
  		if (current == SWITCH2) return 2;
  		if (current == SWITCH3) return 3;
  		if (current == SWITCH4) return 4;
  		if (current == SWITCH5) return 5;
  	}
}

static bool IsPowerOfTwo(int x)
{
    return (x & (x - 1)) == 0;
}
