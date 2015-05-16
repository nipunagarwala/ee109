#ifndef NIOS_INIT_H_
#define NIOS_INIT_H_

/* 
 * The IP, gateway, and subnet mask address below are used as a last resort if 
 * if no network settings can be found, and DHCP (if enabled) fails. You can
 * edit these as a quick-and-dirty way of changing network settings if desired.
 * 
 * Default fall-back address:
 *           IP: 137.57.235.80
 *      Gateway: 192.168.0.1
 *  Subnet Mask: 255.255.255.0
 */
 

#define IPADDR0   137      
#define IPADDR1   57
#define IPADDR2   235
#define IPADDR3   80

#define GWADDR0   192
#define GWADDR1   168
#define GWADDR2   0
#define GWADDR3   1

#define MSKADDR0  255
#define MSKADDR1  255
#define MSKADDR2  255
#define MSKADDR3  0

/* Definition of Task Stack size for tasks not using Nichestack */
#define TASK_STACKSIZE       2048
#define SSS_INITIAL_TASK_PRIORITY               5



#endif /*NIOS_INIT_H_*/
