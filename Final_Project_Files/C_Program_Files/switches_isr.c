#include "system_globals.h"
#include "ee109-lib/switches.h"


/**
 * Slider Switches - Interrupt Service Routine                                
 *                                                                          
 */
void switches_isr(void *context, unsigned int id)
{
  /* Do something now that a switch has changed positions. */
  red_leds_set (switches_get_positions ());
  switches_clear_edge_capture ();
}