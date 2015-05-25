#ifndef __ISR_H__
#define __ISR_H__

void switches_isr (void *, unsigned int);
void pushbuttons_isr (void *, unsigned int);
void ethernet_rx_isr (void *context, unsigned int id);

#endif /* __ISR_H__ */