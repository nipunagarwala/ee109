/* Standard. */
#include <unistd.h>
#include <stdbool.h>
#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include "string.h"

/* Altera. */
#include "system.h"
#include "sys/alt_stdio.h"
#include "sys/alt_irq.h"
#include "lab2.h"

/* EE109. */
#include "isr.h"
#include "system_globals.h"
#include "ee109-lib/colors.h"
#include "ee109-lib/switches.h"
#include "ee109-lib/pushbuttons.h"
#include "ee109-lib/vga.h"
#include "ee109-lib/lcd.h"
#include "ee109-lib/camera.h"
#include "ee109-lib/char_lcd.h"
#include "ee109-lib/ethernet.h"
#include "ee109-lib/red_leds.h"
#include "ee109-lib/green_leds.h"
#include "ee109-lib/hex.h"


/********************************
 ****  GLOBALS DECLARATIONS  ****
 ********************************/
 
/* Defined in system_globals.c */
extern volatile struct ethernet_frame *rx_frame;
extern volatile struct ethernet_frame *tx_frame;
static volatile struct ethernet_frame local_rx_frame;

static volatile char *menuBuf[NUM_MAC_ADDRS];
static int src_length_x; src_length_y;

/* For selecting source and destination MAC addresses. */
const uint8_t mac_addrs[NUM_MAC_ADDRS][ENET_MAC_ADDR_SIZE] = 
  {{0x01, 0x60, 0x6E, 0x11, 0x02, 0x0A},
   {0x01, 0x60, 0x6E, 0x11, 0x02, 0x0B},
   {0x01, 0x60, 0x6E, 0x11, 0x02, 0x0C},
   {0x01, 0x60, 0x6E, 0x11, 0x02, 0x0D},
   {0x01, 0x60, 0x6E, 0x11, 0x02, 0x0E},
   {0x01, 0x60, 0x6E, 0x11, 0x02, 0x0F}};


/*******************************
 ****  FUNCTION PROTOTYPES  ****
 *******************************/
/* General. */
static void initialize (void);
static void run (void);

/* Helper Functions. */
void display_mac_addr (void);


/********************************
 ****  FUNCTION DEFINITIONS  ****
 ********************************/
void display_mac_addr (void) {
  int i, j;
  clear_vga ();
  char init[50] = "Select Source and Destination MAC Addresses :-";
  vga_write (0,15, init);
  int y_init = 20;
  for (i = 0; i < NUM_MAC_ADDRS; i++) {
    char *mac_addr = calloc (1,40);
    for (j = 0; j < ENET_MAC_ADDR_SIZE; j++) {
      char *temp = calloc(1,8);
      sprintf (temp, "%x",mac_addrs[i][j]);
      strcat (mac_addr,temp);
      if (j < ENET_MAC_ADDR_SIZE-1) {
        strcat (mac_addr, ":");
      }
      free (temp);
    }
    menuBuf[i] = mac_addr;
  }
  for (i = 0; i< NUM_MAC_ADDRS; i++) {
    vga_write (0, y_init+2*i, menuBuf[i]);
  }
}

void display_on_screen (int screen, int index) {
  int src = get_source();
  int dst = get_dest();
  
  int i;
  uint8_t src_addr[ENET_MAC_ADDR_SIZE];
  uint8_t dst_addr[ENET_MAC_ADDR_SIZE];

  for (i = 0; i < ENET_MAC_ADDR_SIZE; i++) {
    src_addr[i] = (mac_addrs[src][i]);
    dst_addr[i] = (mac_addrs[dst][i]);
  }
  if (screen == VGA) {
    clear_vga ();
    vga_clear_text ();
    vga_write (10, 20, menuBuf[index]);
  }
  if (screen == LCD) {
    camera_enable_dma (0);
    clear_lcd (0,0, LCD_RES_X, LCD_RES_Y);
    lcd_write (10, 15, menuBuf[index]);
      ethernet_init (src_addr, ethernet_rx_isr);
     init_rx_tx_frame();
  }

}

void clear_vga () {
  vga_draw_rectangle (0,0, VGA_RES_X, VGA_RES_Y, BLACK);
}

void clear_lcd (int x, int y, int width, int height) {
  lcd_draw_rectangle(x,y, width, height, BLACK);
}

/**
 * Function: main
 * ---------------------------------------------------------------
 * 
 */
int main(void)
{
  /* Initialize devices and introduce application. */
  initialize ();
  
  /* Repeatedly checks state and makes updates. */
  run ();
  
  return 0;
}


void init_rx_tx_frame(void) {
  int src = get_source();
  int dst = get_dest();
  
  int i;
  uint8_t src_addr[ENET_MAC_ADDR_SIZE];
  uint8_t dst_addr[ENET_MAC_ADDR_SIZE];

  for (i = 0; i < ENET_MAC_ADDR_SIZE; i++) {
    src_addr[i] = (mac_addrs[src][i]);
    dst_addr[i] = (mac_addrs[dst][i]);
  }
  struct ethernet_frame *temp_tx_frame = malloc(sizeof(struct ethernet_frame));
  memcpy(temp_tx_frame->dest, dst_addr, sizeof(temp_tx_frame->dest));
  memcpy(temp_tx_frame->src, src_addr, sizeof(temp_tx_frame->src));
  temp_tx_frame->length = htons(sizeof(short)*LCD_RES_X+sizeof(uint8_t));
  memcpy(ethernet_get_tx_frame(), temp_tx_frame, sizeof(struct ethernet_frame));

  struct ethernet_frame *print_tx_frame = ethernet_get_tx_frame();
  free(temp_tx_frame);

}

/**
 * Function: initialize
 * ---------------------------------------------------------------
 * 
 */
static void initialize (void)
{
  switches_enable_interrupts (switches_isr);
  switches_set_interrupt_mask (SWITCH8 | SWITCH13 | SWITCH17);
  
  /* Enable DMA transfer to/from video devices (Camera, LCD, VGA). */
  lcd_enable_dma (1); 
  camera_enable_dma (1);
  vga_enable_dma (1); 
   
  /* Enable input device interrupts (Switches and pushbuttons) . */    
  pushbuttons_enable_interrupts (pushbuttons_isr);
  switches_enable_interrupts (switches_isr);
  pushbuttons_set_interrupt_mask (BUTTON1 | BUTTON2 | BUTTON3);

  /* Select MAC addresses and initialize Ethernet device. */
  display_mac_addr ();
  src_length_x = LCD_RES_X;
  src_length_y = LCD_RES_Y;

  

  /* Display welcome message on character LCD. */
  clear_lcd (0,0, LCD_RES_X, LCD_RES_Y);
  char message[30] = "Welcome to LCD!\0";
  char_lcd_write (message);
  char_lcd_cursor_off ();
}

struct ethernet_frame *ethernet_local_rx_frame (void) {
  return &local_rx_frame;
}

void transmit_line_data (int y_index, int *camera_front_buff) {
    int num_shift = get_split ()? 10: 9;
    int offset = (y_index << num_shift);
    volatile short *buf_start = ((short *)camera_front_buff)+offset;
    struct ethernet_frame *final_tx_frame = ethernet_get_tx_frame ();
    final_tx_frame->length = htons(sizeof(short)*src_length_x+sizeof(uint8_t));
    final_tx_frame->data[0] = y_index;
    memcpy(final_tx_frame->data+1,buf_start, sizeof(short)*src_length_x);
    if (get_split ()) {
      local_rx_frame.data[0] = y_index;
      memcpy(local_rx_frame.data+1, buf_start, sizeof(short)*src_length_x);
    }
    ethernet_tx ();

}

void toggle_video_streams () {
  if (camera_get_front_buffer () == LCD_DEFAULT_FRONT_BUFF_BASE) {
    clear_lcd (VGA_RES_X,0, LCD_RES_X-320, LCD_RES_Y);
    camera_set_front_buffer (VGA_DEFAULT_FRONT_BUFF_BASE);
    src_length_x = VGA_RES_X;
    src_length_y = VGA_RES_Y;
    vga_set_front_buffer (LCD_DEFAULT_FRONT_BUFF_BASE);
  } else {
    camera_set_front_buffer (LCD_DEFAULT_FRONT_BUFF_BASE);
    vga_set_front_buffer (VGA_DEFAULT_FRONT_BUFF_BASE);
    src_length_x = LCD_RES_X;
    src_length_y = LCD_RES_Y;
  }
}

/**
 * Function: run
 * -----------------------------------------------------
 *
 */
void run (void)
{
  uint32_t counter = 0;
  while (true) 
  {
    int src = get_source();
    int dest = get_dest();
    if (get_disp() == 0) continue;
    int *camera_front_buff = camera_get_front_buffer();
    int i;
    int num_div = get_split()? 2: 1;
    for (i = 0; i < src_length_y/num_div; i++) {
      transmit_line_data (i, camera_front_buff);
    }
    counter += src_length_y;
    hex_write_3to0 (counter, NUM_BASE_10);
  }    
}
