
/*
Copyright (c) 2019, All rights reserved.

File         : klinkSlave.c
Status       : Current
Description  : 

Author       : haopeng
Contact      : 376915244@qq.com

Revision     : 2019-10 
Description  : Primary released

## Please log your description here for your modication ##

Revision     : 
Modifier     : 
Description  : 

*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <arpa/inet.h>  
#include <netinet/in.h> 
#include <netdb.h>
#include <unistd.h>
#include <errno.h>
#include <signal.h>
#include <time.h>
#include <stdarg.h>
#include <net/if_arp.h>
#include <arpa/inet.h>
#include <sys/ioctl.h>
#include <netinet/in.h>
#include <net/route.h>
#include <net/if.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <net/route.h>  
#include <sys/socket.h>

#include<errno.h>
#include "klink.h"
#include <time.h>
#include "cJSON.h"
#include "apmib.h"

struct route
{
    char device[64];
    struct in_addr destination;
    struct in_addr gateway;
    struct in_addr netmask;
    uint32_t mtu;
    uint32_t window;
    uint32_t flags;
    uint32_t ref;
    uint32_t use;
    uint32_t metric;
    uint32_t irtt;
};

struct in_IpAddr {
    unsigned long s_addr;
};

#define _slave 

static unsigned int g_lastSlaveCheckTime = 0;
extern char *fwVersion;
static char slaveMac[17]={0};
static int reSentReportFlag=0;
cJSON * slaveGenerateMessageHeader(cJSON *root,int messageType,cJSON *messageBody);
const char* slaveGenerateJsonMessageBody(int messageType,cJSON *messageBody,char** pMessage);

#define ERR_EXIT(m, ...)\
    do{\
        fprintf(stderr, m"\n", ##__VA_ARGS__);\
        log(m"\n", ##__VA_ARGS__);\
        exit(EXIT_FAILURE);\
    } while (0) 
#define MAX_BUFF_LEN 1024
void log(const char *fmt, ...)
{
    char buffer[MAX_BUFF_LEN] = {0};
    va_list args;
    time_t timep;
    time(&timep);
    struct tm *p = gmtime(&timep);
    FILE* fp = fopen("klink.log", "a+");
    if(fp){
        snprintf(buffer, MAX_BUFF_LEN, "[%.4d-%.2d-%.2d %.2d:%.2d:%.2d][%d]", (1900+p->tm_year),(1+p->tm_mon), p->tm_mday, p->tm_hour, p->tm_min, p->tm_sec, getpid());
        va_start(args, fmt);
        vsnprintf(buffer + strlen(buffer), MAX_BUFF_LEN - strlen(buffer) - 1, fmt, args);
        va_end(args);
        fwrite(buffer, strlen(buffer), 1, fp);
        fclose(fp);
    }
}
ssize_t      /* Write "n" bytes to a descriptor. */
writen(int fd, const void *vptr, size_t n){
    size_t  nleft;
    ssize_t  nwritten;
    const char *ptr;
    ptr = vptr;
    nleft = n;
    while (nleft > 0) 
	{
        if ( (nwritten = write(fd, ptr, nleft)) <= 0) 
		{
            if (nwritten < 0 && errno == EINTR)
                nwritten = 0;  /* and call write() again */
            else
                return(-1);   /* error */
        }
        nleft -= nwritten;
        ptr   += nwritten;
    }
    return(n);
}

unsigned int upSecond(void)
{
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC, &ts);	
	return ts.tv_sec;
}

 
 static *etherAddrToString(etherAddr_t *ether, int type)
 {
	 static char buffer[8][64];
	 static int buffer_index = 0;
 
	 if (buffer_index >= sizeof(buffer)/sizeof(buffer[0]) - 1)
	 {
		 buffer_index = 0;
	 }
	 else 
	 {
		 buffer_index ++;
	 }
 
	 if (type == ETHER_TYPE_DEFAULT)
	 {
		 type = ETHER_ADDR_TYPE_DEFAULT;
	 }
	 
	 switch(type)
	 {
		 case ETHER_TYPE_NO_SEPARTOR:
			 sprintf(buffer[buffer_index], "%02x%02x%02x%02x%02x%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);
			 break;
		 case ETHER_TYPE_ONE_COLON:
			 sprintf(buffer[buffer_index], "%02x%02x%02x:%02x%02x%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);  
			 break;
		 case ETHER_TYPE_ONE_DASH:
			 sprintf(buffer[buffer_index], "%02x%02x%02x-%02x%02x%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);  
			 break; 		   
		 case ETHER_TYPE_TWO_COLON:
			 sprintf(buffer[buffer_index], "%02x%02x:%02x%02x:%02x%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);  
			 break; 		   
		 case ETHER_TYPE_TWO_DASH:
			 sprintf(buffer[buffer_index], "%02x%02x-%02x%02x-%02x%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);  
			 break; 		   
		 case ETHER_TYPE_FIVE_COLON:
			 sprintf(buffer[buffer_index], "%02x:%02x:%02x:%02x:%02x:%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);  
			 break; 		   
		 case ETHER_TYPE_FIVE_DASH:
			 sprintf(buffer[buffer_index], "%02x%02x%02x%02x%02x%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);  
			 break;
		 default:
			 sprintf(buffer[buffer_index], "%02x%02x%02x%02x%02x%02x", 
				 ether->octet[0], ether->octet[1], ether->octet[2],
				 ether->octet[3], ether->octet[4], ether->octet[5]);  
			 break; 		   
	 }
	 
	 return buffer[buffer_index];
 }
 
 static int getNetifHwAddr(const char *ifname, etherAddr_t *hwaddr)
 {
	 int sock, ret;
	 struct ifreq ifr;
 
	 sock = socket(AF_INET, SOCK_STREAM, 0);
	 if(sock < 0) 
	 {	 
		 return -1;
	 }
 
	 memset(&ifr, 0, sizeof(struct ifreq));
	 strncpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name) - 1);
	 
	 ret = ioctl(sock, SIOCGIFHWADDR, &ifr);
 
	 if(!ret && hwaddr)
	 {
		 memcpy(hwaddr, ifr.ifr_hwaddr.sa_data, sizeof(etherAddr_t));
	 }
 
	 close(sock);
	 
	 return (ret < 0) ? -1 : 0;
 }
 
 static int  getMacAddr( char *pWanHWAddr)
 {
	 struct sockaddr hwaddr;
	 etherAddr_t addr;
	 unsigned char *pMacAddr;
	 if (!(getNetifHwAddr(KLINK_IF, &addr)) ) 
	 {
	  sprintf(pWanHWAddr, "%s",etherAddrToString(&addr, ETHER_TYPE_NO_SEPARTOR));
	 }
	 else
	 {
		 sprintf(pWanHWAddr,"%s","00:00:00:00:00:00");
	 }
	 return 0;
 }


#define zeroIp(ip) ((ip)->s_addr == 0)

int validHostIp(struct in_addr *ip)
{
    int fa;
    fa = ip ? (ntohl(ip->s_addr) >> 24) & 0xff : 0;

    if ((fa > 223) || (fa == 0) || (fa == 127))
    {
        return 0;
    }

    return 1;
}

int validIpAddr(struct in_addr *ip)
{
    if (!zeroIp(ip) && !validHostIp(ip))
    {
        return 0;
    }

    return 1;
}

int getGetwayIp(char gatewayIp[])
{
	FILE *fp=NULL;
	int i=0;
	char *bufPtr=NULL;
	char buff[128]={0};
	int lineNum = 0;

	system("route > /tmp/defautgw");
	if(fp=fopen("/tmp/defautgw","r"))
	{
	    while(fgets(buff,sizeof(buff)-1,fp))
	   { 
		 lineNum++;
		 if(lineNum <3)
			 continue;
		 if(strstr(buff,"default"))		 
		 {
		   bufPtr = buff;
		   while(!((*bufPtr >= '0')&&(*bufPtr <= '9')))
		   	bufPtr++;
		    while((*bufPtr != '\0') && (*bufPtr != ' '))
             {
               gatewayIp[i] = *bufPtr;
               bufPtr++;
			   i++;
             }
		     break;
		 }
		 else
		 {
			fclose(fp);
			return 1;
		 }
	   }
	} 	
	fclose(fp);
	return 0;
		
}


int getGetwayIp2(char gatewayIp[])
{
   FILE *fp=NULL;
   int i=0;
   char *bufPtr1=NULL;
   char *bufPtr2=NULL;
   char buff[64]={0};
   int lineNum = 0;
  
   fp=fopen("/etc/resolv.conf","r");
   if(fp == NULL)
        {
          TRACE_DEBUG("open /etc/resolv.conf failed\n");     
        return 1;
        }
   while(fgets(buff,64,fp))
   {
        lineNum++;
        if(lineNum > 1)
            break;
        bufPtr1=strstr(buff,"nameserver");
        if(bufPtr1)
        {
           bufPtr2 = bufPtr1 + 11;
           i = 0;
           while(*bufPtr2 != '\r' && *bufPtr2 != '\n')
           {
              gatewayIp[i] = *bufPtr2;
              bufPtr2++;
              i++;
           }
           gatewayIp[i] = '\0';
	  //sysLog(LOG_NOTICE,"gatewayIp:%s\n",gatewayIp);   
	 break;
        }
        else
        {
           fclose(fp);
           return 1;
        }
   }
   fclose(fp);
   return 0;
}


int getOsRoute
    (
        struct route *route, 
        int num, 
        int defaultOnly,    /* if true, match default entries */
        const char *device, /* if not empty, match the device name */
        int flagMask        /* if > 0, match the set flags */
    )
{
    int ret = 0;
    int count = 0;

    char devname[64];
    unsigned long dest, gateway, mask;
    int flags, ref, use, metric, mtu, window, irtt;
    
    FILE *fp = fopen("/proc/net/route", "r");

    if (fp == NULL)
    {
        return -1;
    }

    if (fscanf(fp, "%*[^\n]\n") < 0) 
    { /* Skip the first line. */
        goto ERROR;		   /* Empty or missing line, or read error. */
    }    

    while(count < num)
    {
        ret = fscanf(fp, "%63s%lx%lx%X%d%d%d%lx%d%d%d\n",
                devname, &dest, &gateway, &flags, &ref, &use, &metric, &mask,
                &mtu, &window, &irtt);

        if (ret != 11)
        {
            if ((ret < 0) && feof(fp))
            {
                break;
            }
            goto ERROR;
        }
        /* always return the up entries */
        if (!(flags & RTF_UP))
        {
            continue;
        }
        
        if (defaultOnly && (dest != 0))
        {
            continue;
        }

        if (device && strcmp(device, devname))
        {
            continue;
        }

        if (flagMask && ((flagMask & flags) != flagMask))
        {
            continue;
        }
       
        strcpy(route[count].device, devname);
        route[count].destination.s_addr = dest;
        route[count].gateway.s_addr = gateway;
        route[count].netmask.s_addr = mask;
        route[count].flags = flags;
        route[count].ref = ref;
        route[count].use = use;
        route[count].metric = metric;
        route[count].mtu = mtu;
        route[count].window = window;
        route[count].irtt = irtt;

        count ++;
    }

    fclose(fp);

    return count;
    
ERROR:

    fclose(fp);
    
    return -1;                    
}


int getOsDefaultGateway(struct in_addr *gateway)
{
    struct route route;

    if (gateway == NULL)
    {
        return 0;
    }

    if (getOsRoute(&route, 1, 1, NULL, 0) <= 0)
    {
        return -1;
    }

    /* in ppp connection, default gateway is 0 */
    if (route.gateway.s_addr == 0)
    {
        struct route ppp;
        if (getOsRoute(&ppp, 1, 0, route.device, RTF_HOST) <= 0)
        {
            /* not found, use the zero gateway */
            gateway->s_addr = route.gateway.s_addr;
        }
        else 
        {
            gateway->s_addr = ppp.destination.s_addr;
        }
    }
    else
    {
        gateway->s_addr = route.gateway.s_addr;
    }
    
    return 1;
}

cJSON * slaveGenerateMessageHeader(cJSON *root,int messageType,cJSON *messageBody)
{   
	cJSON *pJson=root;
	char macAddr[18]={0};
	char fwVersion[18]={0};	

    switch (messageType)
    {
		  case KLINK_START: 					 
		   cJSON_AddStringToObject(pJson, "messageType", "1");
		   break;
		case KLINK_MASTER_REPORT_DEVICE_ACK:  //messageType=2
		   cJSON_AddStringToObject(pJson, "messageType", "3");
		   TRACE_DEBUG("=>get_master_version_ack\n");
		   break;
		case KLINK_HEARD_BEAD_SYNC_MESSAGE:
		   cJSON_AddStringToObject(pJson, "messageType", "3");
		   break;
		 case KLINK_MASTER_SEND_LED_SWITCH_TO_SLAVE:
		   cJSON_AddStringToObject(pJson, "messageType", "5");
		   break;
		 case KLINK_MASTER_SEND_WIFI_CFG_INFO_TO_SLAVE:
		   cJSON_AddStringToObject(pJson, "messageType", "7");
		   break; 
		 case KLINK_MASTER_SEND_GUEST_WIFI_INFO_TO_SLAVE:	 
		   cJSON_AddStringToObject(pJson, "messageType", "9");
		   break;
		default:
		  /*if havn't incomming message,must period send beartbead*/ 
		   messageType=KLINK_HEARD_BEAD_SYNC_MESSAGE; 
		   break;
    }

		cJSON_AddStringToObject(pJson, "sourceMac", slaveMac);
	    cJSON_AddStringToObject(pJson, "destMac", cJSON_GetObjectItem(messageBody,"sourceMac")->valuestring);
	  //  cJSON_AddStringToObject(pJson, "slaveMac", macAddr);
	    return pJson;
}

const char* slaveGenerateJsonMessageBody(int messageType,cJSON *messageBody,char** pMessage)
{
	TRACE_DEBUG("enter:%s_%d:\n ",__FUNCTION__,__LINE__);

	char* stringMessage=NULL;
    cJSON *topRoot=NULL;
	cJSON *root=NULL;

	int ledEnable;
    char buff[2]={0};
    /*for guest network*/
    int disableFlg_2g;
    int disableFlg_5g;
    int old_wlan_idx;
    int old_vwlan_idx;
	ENCRYPT_T encrypt_5g;
	char ssidBuf_5g[64]={0}; 
	int authVal_5g;
	int cipher_5g;
	char psk_5g[64]={0};
	int hidden_ssid_2g;
	
	
	ENCRYPT_T encrypt_2g; 
    char ssidBuf_2g[64]={0};
	int authVal_2g;
	int cipher_2g;
	char psk_2g[64]={0};
	int hidden_ssid_5g;
	
	char sn[64]={0};	  
	topRoot = cJSON_CreateObject();
	 if (!topRoot)
    {
        TRACE_DEBUG("cJsonCreateObj failed!");
        return NULL;
    }
	 
    /* generate header */
    topRoot=slaveGenerateMessageHeader(topRoot,messageType,messageBody);
 switch(messageType)
 {
    case KLINK_START:                     	//messageType=0
     {
       cJSON_AddItemToObject(topRoot, "devInfo", root = cJSON_CreateObject());
	   cJSON_AddStringToObject(root, "slaveSoftVer", fwVersion);
	   apmib_get( MIB_CUSTOMER_HW_SERIAL_NUM,  (void *)&sn);
	   cJSON_AddStringToObject(root, "sn", sn);

	    /*for led switch*/
	   apmib_get(MIB_LED_ENABLE, (void *)&ledEnable);
	   sprintf(buff,"%d",ledEnable);
	   cJSON_AddItemToObject(topRoot, "ledSwitch", root = cJSON_CreateObject());
	   cJSON_AddStringToObject(root, "ledEnable", buff);

       old_wlan_idx = wlan_idx;
	   old_vwlan_idx = vwlan_idx;
		TRACE_DEBUG("%s_%d:\n ",__FUNCTION__,__LINE__);   
	   /*for wifi cfg*/
	   vwlan_idx = 0;
       wlan_idx = 0;
	   apmib_get( MIB_WLAN_ENCRYPT,  (void *)&encrypt_5g);
       apmib_get( MIB_WLAN_SSID,  (void *)&ssidBuf_5g);
	   apmib_get(MIB_WLAN_WPA_AUTH, (void *)&authVal_5g);
	   apmib_get(MIB_WLAN_WPA2_CIPHER_SUITE, (void *)&cipher_5g);
	   apmib_get(MIB_WLAN_WPA_PSK, (void *)&psk_5g);
	   apmib_get(MIB_WLAN_HIDDEN_SSID, (void *)&hidden_ssid_5g);
	   
	   wlan_idx = 1;
	   apmib_get( MIB_WLAN_ENCRYPT,  (void *)&encrypt_2g);
       apmib_get( MIB_WLAN_SSID,  (void *)&ssidBuf_2g);
	   apmib_get(MIB_WLAN_WPA_AUTH, (void *)&authVal_2g);
	   apmib_get(MIB_WLAN_WPA2_CIPHER_SUITE, (void *)&cipher_2g);
	   apmib_get(MIB_WLAN_WPA_PSK, (void *)&psk_2g);
	   apmib_get(MIB_WLAN_HIDDEN_SSID, (void *)&hidden_ssid_2g);


	   /*for guest wifi cfg*/
	   vwlan_idx = 2;
       wlan_idx = 0;
	   apmib_get(MIB_WLAN_WLAN_DISABLED, (void *)&disableFlg_5g);
	   wlan_idx = 1;
	   apmib_get(MIB_WLAN_WLAN_DISABLED, (void *)&disableFlg_2g);	
	   
	   wlan_idx = old_wlan_idx;
       vwlan_idx = old_vwlan_idx;	   
	 

	   /*for  wifi Cfg*/
	   cJSON_AddItemToObject(topRoot, "wifiCfg", root = cJSON_CreateObject());
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",encrypt_5g);
	   cJSON_AddStringToObject(root, "encrypt_5g", buff);
	   cJSON_AddStringToObject(root, "ssid_5g", ssidBuf_5g);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",authVal_5g);
	   cJSON_AddStringToObject(root, "auth_5g", buff);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",cipher_5g);
	   cJSON_AddStringToObject(root, "cipher_5g", buff);
	   cJSON_AddStringToObject(root, "psk_5g", psk_5g);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",hidden_ssid_5g);
	   cJSON_AddStringToObject(root, "hidden_ssid_5g", buff);
	   

	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",encrypt_2g);
	   cJSON_AddStringToObject(root, "encrypt_2g", buff);
	   cJSON_AddStringToObject(root, "ssid_2g", ssidBuf_2g);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",authVal_2g);
	   cJSON_AddStringToObject(root, "auth_2g", buff);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",cipher_2g);
	   cJSON_AddStringToObject(root, "cipher_2g", buff);
	   cJSON_AddStringToObject(root, "psk_2g", psk_2g);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",hidden_ssid_2g);
	   cJSON_AddStringToObject(root, "hidden_ssid_2g", buff);

	    /*for guest wifi Cfg*/
	   cJSON_AddItemToObject(topRoot,"guestWifi", root = cJSON_CreateObject());
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",disableFlg_5g);
	   cJSON_AddStringToObject(root, "guestSwitch_5g", buff);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",disableFlg_2g);
	   cJSON_AddStringToObject(root, "guestSwitch_2g", buff); 
     }

	 
	 break;
  case KLINK_MASTER_REPORT_DEVICE_ACK:  //messageType=2
  	{
     cJSON* jasonObj = cJSON_GetObjectItem(messageBody,"repAck");
	 if(strcmp(cJSON_GetObjectItem(jasonObj,"ack")->valuestring,"none")==0)
	 {
	 // cJSON_AddItemToObject(topRoot,"devInfo", root = cJSON_CreateObject());
      //cJSON_AddStringToObject(root, "slaveSoftVer", fwVersion);
	  reSentReportFlag=1;
	 }
	 else
	 {
	  if(strcmp(cJSON_GetObjectItem(jasonObj,"ack")->valuestring,fwVersion)!=0)
	  {
	  // cJSON_AddItemToObject(topRoot,"devInfo", root = cJSON_CreateObject());
	   //cJSON_AddStringToObject(root, "slaveSoftVer", fwVersion);
	   reSentReportFlag=1;
	  }
	  else
	  {
	   reSentReportFlag=0;
	  }
	 }
  	}

     TRACE_DEBUG("=>get_master_version_ack\n");
	 break;
  case KLINK_HEARD_BEAD_SYNC_MESSAGE:
  	//  cJSON_AddItemToObject(topRoot, "heartbeat", root = cJSON_CreateObject());
	 // cJSON_AddStringToObject(root, "heartbeatSync", "sync");
	 break;
   case KLINK_MASTER_SEND_LED_SWITCH_TO_SLAVE:
      {
	    apmib_get(MIB_LED_ENABLE, (void *)&ledEnable);
	    memset(buff,0,sizeof(buff));
	    sprintf(buff,"%d",ledEnable);
	    cJSON_AddItemToObject(topRoot, "ledSwitch", root = cJSON_CreateObject());
	    cJSON_AddStringToObject(root, "ledEnable", buff);
		break;
   	  }	
   case KLINK_MASTER_SEND_WIFI_CFG_INFO_TO_SLAVE:
   	  {
   	   old_wlan_idx = wlan_idx;
	   old_vwlan_idx = vwlan_idx;
	   vwlan_idx = 0;
       wlan_idx = 0;
	   apmib_get( MIB_WLAN_ENCRYPT,  (void *)&encrypt_5g);
       apmib_get( MIB_WLAN_SSID,  (void *)&ssidBuf_5g);
	   apmib_get(MIB_WLAN_WPA_AUTH, (void *)&authVal_5g);
	   apmib_get(MIB_WLAN_WPA2_CIPHER_SUITE, (void *)&cipher_5g);
	   apmib_get(MIB_WLAN_WPA_PSK, (void *)&psk_5g);
	   apmib_get(MIB_WLAN_HIDDEN_SSID, (void *)&hidden_ssid_5g);
	   
	   wlan_idx = 1;
	   apmib_get( MIB_WLAN_ENCRYPT,  (void *)&encrypt_2g);
       apmib_get( MIB_WLAN_SSID,  (void *)&ssidBuf_2g); 
	   apmib_get(MIB_WLAN_WPA_AUTH, (void *)&authVal_2g);
	   apmib_get(MIB_WLAN_WPA2_CIPHER_SUITE, (void *)&cipher_2g);
	   apmib_get(MIB_WLAN_WPA_PSK, (void *)&psk_2g);
	   apmib_get(MIB_WLAN_HIDDEN_SSID, (void *)&hidden_ssid_2g);
	   wlan_idx = old_wlan_idx;
       vwlan_idx = old_vwlan_idx;

	   cJSON_AddItemToObject(topRoot, "wifiCfg", root = cJSON_CreateObject());
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",encrypt_5g);
	   cJSON_AddStringToObject(root, "encrypt_5g", buff);
	   cJSON_AddStringToObject(root, "ssid_5g", ssidBuf_5g);
	    memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",authVal_5g);
	   cJSON_AddStringToObject(root, "auth_5g", buff);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",cipher_5g);
	   cJSON_AddStringToObject(root, "cipher_5g", buff);
	   cJSON_AddStringToObject(root, "psk_5g", psk_5g);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",hidden_ssid_5g);
	   cJSON_AddStringToObject(root, "hidden_ssid_5g", buff);
	   
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",encrypt_2g);
	   cJSON_AddStringToObject(root, "encrypt_2g", buff);
	   cJSON_AddStringToObject(root, "ssid_2g", ssidBuf_2g);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",authVal_2g);
	   cJSON_AddStringToObject(root, "auth_2g", buff);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",cipher_2g);
	   cJSON_AddStringToObject(root, "cipher_2g", buff);
	   cJSON_AddStringToObject(root, "psk_2g", psk_2g);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",hidden_ssid_2g);
	   cJSON_AddStringToObject(root, "hidden_ssid_2g", buff);
	   break; 
   	  }
   case KLINK_MASTER_SEND_GUEST_WIFI_INFO_TO_SLAVE:    
      {
       old_wlan_idx = wlan_idx;
	   old_vwlan_idx = vwlan_idx;
	   vwlan_idx = 2;
       wlan_idx = 0;
	   apmib_get(MIB_WLAN_WLAN_DISABLED, (void *)&disableFlg_5g);
	   wlan_idx = 1;
	   apmib_get(MIB_WLAN_WLAN_DISABLED, (void *)&disableFlg_2g);	   
	   wlan_idx = old_wlan_idx;
       vwlan_idx = old_vwlan_idx;

	   cJSON_AddItemToObject(topRoot,"guestWifi", root = cJSON_CreateObject());
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",disableFlg_5g);
	   cJSON_AddStringToObject(root, "guestSwitch_5g", buff);
	   memset(buff,0,sizeof(buff));
	   sprintf(buff,"%d",disableFlg_2g);
	   cJSON_AddStringToObject(root, "guestSwitch_2g", buff); 
	   break;
   	 }
  default:
  	/*if havn't incomming message,must period send beartbead*/ 
  	 messageType=KLINK_HEARD_BEAD_SYNC_MESSAGE; 
  	 break;
 }
 TRACE_DEBUG("%s_%d:\n ",__FUNCTION__,__LINE__);
 	*pMessage = cJSON_Print(topRoot);  
	cJSON_Delete(topRoot);	
	return *pMessage;
}

int _slave parseMasterConf(int fd, cJSON *jason_obj)
{
   cJSON *tasklist=jason_obj->child;
   while(tasklist!=NULL)
   {
    cJSON_GetObjectItem(tasklist,"slaveSoftVer")->valuestring;
    cJSON_GetObjectItem(tasklist,"slaveMac")->valuestring;
    tasklist=tasklist->next;
   }
		
}


/*
 *led switch formate:
 *sync:
 *{"message":"4","sourceMac":"xxxxxx","destMac":"yyyyyy","ledSwitch":{"ledEnable":"0"}}
 *
 *ack:
 *{"message":"5","sourceMac":"xxxxxx","destMac":"yyyyyy","ledSwitch":{"ledEnable":"0"}}
*/
int syncMasterLedSwitch(int fd, int messageType, cJSON *messageBody)
{
   char tmp[2]={0};
   int value=-1;
   int localValue=1;
   char *pResponseMsg=NULL;
   cJSON * jasonObj=NULL;

   if(jasonObj = cJSON_GetObjectItem(messageBody,"ledSwitch"))
   {
	 value=(strncmp(cJSON_GetObjectItem(jasonObj,"ledEnable")->valuestring, "0",1)?1:0);

     if(apmib_get(MIB_LED_ENABLE,(void *)&localValue))
    {
     if(localValue!=value)
     {
      localValue=value;
	  apmib_set(MIB_LED_ENABLE,(void *)&value);	
	  if(apmib_update(CURRENT_SETTING) <= 0)
         {
           TRACE_DEBUG("apmib_update CURRENT_SETTING fail.\n");
         }
     }
    }
   }
	pResponseMsg=slaveGenerateJsonMessageBody(messageType,messageBody,&pResponseMsg);
	TRACE_DEBUG("%s_%d:send message=%s \n",__FUNCTION__,__LINE__,pResponseMsg);
	send(fd, pResponseMsg,strlen(pResponseMsg), 0) ;
    if(pResponseMsg != NULL)
        free(pResponseMsg);
}

/*
 *guest wifi settings formate:
 *sync:
 *{"message":"8","sourceMac":"xxxxxx","destMac":"yyyyyy","guestWifi":{"guestSwitch_5g":"0","guestSwitch_2g":"0"}}
 *
 *ack:
 *{"message":"9","sourceMac":"yyyyyy","destMac":"xxxxxx","guestWifi":{"guestSwitch_5g":"0","guestSwitch_2g":"0"}}
 *
*/
int syncGuestWifiSettings(int fd, int messageType, cJSON *messageBody)
{
   cJSON *jasonObj=NULL;
   int value=-1;
   int localValue=1;
   char *pResponseMsg=NULL;
  /*for guest network*/
  int disableFlg_2g;
  int disableFlg_5g;
  int old_wlan_idx;
  int old_vwlan_idx;
   if(jasonObj = cJSON_GetObjectItem(messageBody,"guestWifi"))
   {
   	  old_wlan_idx = wlan_idx;
	  old_vwlan_idx = vwlan_idx;
	  vwlan_idx = 2;
      wlan_idx = 0;
	 value=(strncmp(cJSON_GetObjectItem(jasonObj,"guestSwitch_5g")->valuestring, "0",1)?1:0);
     
     if(apmib_get(MIB_WLAN_WLAN_DISABLED,(void *)&localValue))
    {
     if(localValue!=value)
     {
	  apmib_set(MIB_WLAN_WLAN_DISABLED,(void *)&value);	
	  if(value==1)
	  	system("ifconfig wlan0-va1 down");
	  else if(value==0)
	  	system("ifconfig wlan0-va1 up");  
     }
    }

	 wlan_idx = 1;
	 value=(strncmp(cJSON_GetObjectItem(jasonObj,"guestSwitch_2g")->valuestring, "0",1)?1:0);   
	  if(apmib_get(MIB_WLAN_WLAN_DISABLED,(void *)&localValue))
	{
	   if(localValue!=value)
	   {
		apmib_set(MIB_WLAN_WLAN_DISABLED,(void *)&value); 
	    if(value==1)
	  	    system("ifconfig wlan1-va1 down");
	    else if(value==0)
	  	    system("ifconfig wlan1-va1 up");                
	   }
	}
	if(apmib_update(CURRENT_SETTING) <= 0)
	{
	 TRACE_DEBUG("apmib_update CURRENT_SETTING fail.\n");
	}    	 
   }
   	 wlan_idx = old_wlan_idx;
     vwlan_idx = old_vwlan_idx;
	pResponseMsg=slaveGenerateJsonMessageBody(messageType,messageBody,&pResponseMsg);
	TRACE_DEBUG("%s_%d:send message=%s \n",__FUNCTION__,__LINE__,pResponseMsg);
	send(fd, pResponseMsg,strlen(pResponseMsg), 0) ;	
    if(pResponseMsg != NULL)
       free(pResponseMsg);
}


/*
 *wifi settings formate:
 *sync:
 *{"message":"6","sourceMac":"xxxxxx","destMac":"yyyyyy","wifiCfg":{"encrypt_5g":"0","ssid_5g":"ssidName","encrypt_2g":"0","ssid_2g":"ssidName"}}
 *ack:
 *{"message":"7","sourceMac":"yyyyyy","destMac":"xxxxxx","wifiCfg":{"encrypt_5g":"0","ssid_5g":"ssidName","encrypt_2g":"0","ssid_2g":"ssidName"}}
 *
*/
int syncWifiSettings(int fd, int messageType, cJSON *messageBody)
{
  TRACE_DEBUG("%s_%d: \n",__FUNCTION__,__LINE__);
   cJSON *jasonObj=NULL;
   char ssidBuf[64]={0};  
   ENCRYPT_T encrypt_5g; 
   char ssid_5g[64]={0};
   int authVal_5g;
   int cipher_5g;
   char psk_5g[64]={0};
 
   ENCRYPT_T encrypt_2g; 
   char ssid_2g[64]={0};
   int authVal_2g;
   int cipher_2g;
   char psk_2g[64]={0};
   int value=-1;
   int setFlag=0;
   int localValue=1;
   int hidden_ssid_local;
   int ret=0;
   char *pResponseMsg=NULL;
    int old_wlan_idx;
    int old_vwlan_idx;
	int settingFlag=0;

   if(jasonObj = cJSON_GetObjectItem(messageBody,"wifiCfg"))
   {
	old_wlan_idx = wlan_idx;
	old_vwlan_idx = vwlan_idx;
	vwlan_idx = 0;
    wlan_idx = 0;
	encrypt_5g=atoi(cJSON_GetObjectItem(jasonObj,"encrypt_5g")->valuestring);
	strcpy(ssid_5g,cJSON_GetObjectItem(jasonObj,"ssid_5g")->valuestring);
	authVal_5g=atoi(cJSON_GetObjectItem(jasonObj,"auth_5g")->valuestring);
	cipher_5g=atoi(cJSON_GetObjectItem(jasonObj,"cipher_5g")->valuestring);;
	strcpy(psk_5g,cJSON_GetObjectItem(jasonObj,"psk_5g")->valuestring);
	hidden_ssid_local=(strncmp(cJSON_GetObjectItem(jasonObj,"hidden_ssid_5g")->valuestring, "0",1)?1:0);
	apmib_set(MIB_WLAN_ENCRYPT, (void *)&encrypt_5g);
	apmib_set(MIB_WLAN_SSID, (void *)&ssid_5g);	
	apmib_set(MIB_WLAN_WPA_AUTH, (void *)&authVal_5g);
	apmib_set(MIB_WLAN_WPA2_CIPHER_SUITE, (void *)&cipher_5g);
	apmib_set(MIB_WLAN_WPA_PSK, (void *)&psk_5g);
	apmib_set(MIB_WLAN_HIDDEN_SSID, (void *)&hidden_ssid_local);
 
	wlan_idx = 1;
	encrypt_2g=atoi(cJSON_GetObjectItem(jasonObj,"encrypt_2g")->valuestring);
	strcpy(ssid_2g,cJSON_GetObjectItem(jasonObj,"ssid_2g")->valuestring);
	authVal_2g=atoi(cJSON_GetObjectItem(jasonObj,"auth_2g")->valuestring);
	cipher_2g=atoi(cJSON_GetObjectItem(jasonObj,"cipher_2g")->valuestring);;
	strcpy(psk_2g,cJSON_GetObjectItem(jasonObj,"psk_2g")->valuestring);
	hidden_ssid_local=(strncmp(cJSON_GetObjectItem(jasonObj,"hidden_ssid_2g")->valuestring, "0",1)?1:0);
	apmib_set(MIB_WLAN_ENCRYPT, (void *)&encrypt_2g);
	apmib_set(MIB_WLAN_SSID, (void *)&ssid_2g);	
	apmib_set(MIB_WLAN_WPA_AUTH, (void *)&authVal_2g);
	apmib_set(MIB_WLAN_WPA2_CIPHER_SUITE, (void *)&cipher_2g);
	apmib_set(MIB_WLAN_WPA_PSK, (void *)&psk_2g);
	apmib_set(MIB_WLAN_HIDDEN_SSID, (void *)&hidden_ssid_local);

	if(apmib_update(CURRENT_SETTING) <= 0)
    {
      TRACE_DEBUG("apmib_update CURRENT_SETTING fail.\n");
    }
	 wlan_idx = old_wlan_idx;
     vwlan_idx = old_vwlan_idx;
   }

	pResponseMsg=slaveGenerateJsonMessageBody(messageType,messageBody,&pResponseMsg);
	TRACE_DEBUG("%s_%d:send message=%s \n",__FUNCTION__,__LINE__,pResponseMsg);
	send(fd, pResponseMsg,strlen(pResponseMsg), 0) ;
    if(pResponseMsg != NULL)
       free(pResponseMsg);
	system("init.sh gw bridge");

}


/*
 * report device info formate:
 *sync:
 {"messageType": "1","sourceMac":"xxxxxx","destMac":"yyyyyy","slaveVersion":{"slaveSoftVer":"WM V1.0.5"},
  "ledSwitch":{"ledEnable":"0"},
  "wifiCfg":{"encrypt_5g":"0","ssid_5g":"ssidName","encrypt_2g":"0","ssid_2g":"ssidName"},
  "guestWifi":{"guestSwitch_5g":"0","guestSwitch_2g":"0"}}
 * ack:
  {"messageType": "1","sourceMac":"yyyyyy","destMac":"xxxxxx","slaveVersion":{"slaveSoftVer":"WM V1.0.5"},
  "ledSwitch":{"ledEnable":"0"},
  "wifiCfg":{"encrypt_5g":"0","ssid_5g":"ssidName","encrypt_2g":"0","ssid_2g":"ssidName"},
  "guestWifi":{"guestSwitch_5g":"0","guestSwitch_2g":"0"}}
*/

void _slave slaveReportDeviceInfoToMaster(int sd, int messageType, cJSON *messageBody) 
{
	TRACE_DEBUG("enter:%s_%d:\n ",__FUNCTION__,__LINE__);

	char *messageBuff;
	char* stringMessage=NULL;
    cJSON *topRoot=NULL;
	cJSON *root=NULL;
	cJSON *parameters=NULL;
	int localValue=1;

    if(apmib_get(MIB_FIRST_LOGIN,(void *)&localValue))
    {
     if(localValue!=1)
     {
      localValue=1;
	  apmib_set(MIB_FIRST_LOGIN,(void *)&localValue);	
	  if(apmib_update(CURRENT_SETTING) <= 0)
         {
           TRACE_DEBUG("apmib_update CURRENT_SETTING fail.\n");
         }
     }
    }
	
    stringMessage=slaveGenerateJsonMessageBody(messageType,messageBody,&stringMessage);
	send(sd, stringMessage,strlen(stringMessage), 0) ;
    if(stringMessage != NULL)
       free(stringMessage);
}

/*
 *heard beat formate:
 *{"message":"10","heardBead":{"heardBeadState":"sync"}}
 *
*/
int sendHeardBeatMessage(int fd,int messageType, cJSON *messageBody)
{
  char* stringMessage=NULL;
 while(1) 
 {
 if(upSecond() - g_lastSlaveCheckTime > HEART_BEAT_TIME_SCHEDULE)	
  {
   stringMessage=slaveGenerateJsonMessageBody(messageType,messageBody,&stringMessage);
   send(fd, stringMessage,strlen(stringMessage), 0) ;
   if(stringMessage != NULL)
       free(stringMessage);
   g_lastSlaveCheckTime = upSecond();
  break;
  }
    sleep(1);
 }
}


int _slave klinkSlaveStateMaching(int sd,int messageType,cJSON *messageBody)
{
 switch(messageType)
 {
  case KLINK_START:                     	          //messageType=0
     slaveReportDeviceInfoToMaster(sd,messageType,messageBody);   //messageType=1
	 break;
  case KLINK_MASTER_REPORT_DEVICE_ACK:                 //messageType=2
  
     TRACE_DEBUG("=>get_master_version_ack\n");
	 break;
  case KLINK_HEARD_BEAD_SYNC_MESSAGE:
     sendHeardBeatMessage(sd,messageType,messageBody);  
	 break;
   case KLINK_MASTER_SEND_LED_SWITCH_TO_SLAVE:
     syncMasterLedSwitch(sd,messageType,messageBody); 
	 break;
   case KLINK_MASTER_SEND_WIFI_CFG_INFO_TO_SLAVE:
     syncWifiSettings(sd,messageType,messageBody);  
	 break; 
   case KLINK_MASTER_SEND_GUEST_WIFI_INFO_TO_SLAVE:    
     syncGuestWifiSettings(sd,messageType,messageBody); 
	 break;
  default:
  	/*if havn't incomming message,must period send beartbead*/ 
  	 messageType=KLINK_HEARD_BEAD_SYNC_MESSAGE; 
  	 break;
 }

  if(messageType==KLINK_MASTER_REPORT_DEVICE_ACK)
   {
     if(reSentReportFlag==1)
     {
      messageType=KLINK_START;
      slaveReportDeviceInfoToMaster(sd,messageType,messageBody);
     }
	 else
	 {
     sendHeardBeatMessage(sd,messageType,messageBody); 
	 }
   }

}

int _slave parseMessageFromMaster(int sd, char* masterMessage) 
{

    cJSON *json=NULL;
	int messageType=-1;

    json = cJSON_Parse(masterMessage);
    if (!json)
    {
        TRACE_DEBUG("Error before: [%s]\n", cJSON_GetErrorPtr());
    }
    else
    {
      /*{"slaveVersion":["messageType":"0"{"slaveSoftVer":"WM V1.0.5","slaveMac":"00:11:22:33:44:55"}]}*/
     //if(jason_obj = cJSON_GetObjectItem(json,"slaveVersion"))	
     messageType = atoi(cJSON_GetObjectItem(json,"messageType")->valuestring);
	 if(messageType>=1)
	  {
	    /*if dest mac not equal,it means message not send to mine,exit*/
	    if(strcmp(cJSON_GetObjectItem(json,"destMac")->valuestring,slaveMac))
		return 0;
	  }
	 klinkSlaveStateMaching(sd,messageType,json);
     cJSON_Delete(json);	
    }
	return 0;
}

int main(int argc,char **argv)
{
	char ip[16]={0};
	static int messagetype=0;
	int routeTableFlag=-1;
	int routeTableFlag2=-1;
	struct in_addr gwAddr;
    fd_set rset;
    FD_ZERO(&rset);
    int sock = socket(AF_INET,SOCK_STREAM,0);
    struct sockaddr_in server_addr;
    memset(&server_addr, 0, sizeof(server_addr));
    server_addr.sin_family = AF_INET;   
    //struct hostent *h = gethostbyname(argv[1]);
    //server_addr.sin_addr = *((struct in_addr *)h->h_addr);

	#if 0
    routeTableFlag=getGetwayIp(ip);
	routeTableFlag2=getGetwayIp2(ip);
	if((routeTableFlag!=0)&&(routeTableFlag2!=0))
	{
	 TRACE_DEBUG("%s_%d:getting gateway ip...\n",__FUNCTION__,__LINE__);
	 return 0;
	}
	#endif
	 struct in_addr defaultGwAddr;
	memset(&defaultGwAddr,0,sizeof(struct in_IpAddr));
     if (getOsDefaultGateway(&defaultGwAddr) < 0)
     {
       printf("call getOsGateway() failed\n");
	   return 0;
     }
      printf(" Gateway: %s\n", inet_ntoa(defaultGwAddr));
	 sprintf(ip,"%s",inet_ntoa(defaultGwAddr));
    TRACE_DEBUG("slaveip[%s]\n", ip );
	server_addr.sin_addr.s_addr = inet_addr(ip);  
    server_addr.sin_port = htons(KLINK_PORT);
    if(connect(sock,(struct sockaddr*)&server_addr, sizeof(struct sockaddr_in)) < 0)
	{
        ERR_EXIT("connect to %s:%s failed\n", argv[1], argv[2]);
    }

    int ready;  
    int maxfd;  
    int fd_stdin = fileno(stdin);
    int fd_stdout = fileno(stdout);
    if (fd_stdin > sock) 
    {
      maxfd = fd_stdin;  
    }
    else 
    {
      maxfd = sock; 
    }
    char sendbuf[1024] = {0};  
    char recvbuf[1024] = {0};  
	apmib_init();
	
	g_lastSlaveCheckTime = upSecond();
	getMacAddr(slaveMac);
    while (1)
	{  

        FD_SET(fd_stdin, &rset);  
        FD_SET(sock, &rset);  
	   /*select return value:there is something readble message */
        ready = select(maxfd + 1, &rset, NULL, NULL, NULL); 
        if (ready == -1) ERR_EXIT("select error");  
        if (ready == 0) 
			continue;  
        if (FD_ISSET(sock, &rset))
		{  
            int ret = read(sock, recvbuf, sizeof(recvbuf)); 
            if (ret == -1) 
            {
			  ERR_EXIT("read from socket error");  
            }
            else if (ret  == 0)
            {
			  ERR_EXIT("server close"); 
            }
           // writen(fd_stdout, recvbuf, ret);
           TRACE_DEBUG("==>received message from maser:\n%s \n",recvbuf);
		   //send(sock, "hello", sizeof("hello"), 0) ;
		   
		   parseMessageFromMaster(sock, (char*)recvbuf);
           memset(recvbuf, 0, sizeof(recvbuf));  
        }  
	sleep(1);
#if 0
		strcpy(sendbuf,"test");
        if (FD_ISSET(fd_stdin, &rset))
		{  
            int ret = read(fd_stdin, sendbuf, sizeof(sendbuf));
            if(ret > 0) 
			{
                writen(sock, sendbuf, ret);  
                memset(sendbuf, 0, sizeof(sendbuf));
            }else
			{
                ERR_EXIT("read from stdin error");                
            }
        }  
#endif
    }  
    close(sock);  
    exit(0);
}
