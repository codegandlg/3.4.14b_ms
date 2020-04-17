#ifndef MAP_INIT_H
#define MAP_INIT_H

#include <stdint.h>

#define READ_BUF_SIZE 50
#define MAP_CONFIG_2G (0)
#define MAP_CONFIG_5GL                (1)
#define MAP_CONFIG_5GH                (2)
#define MAP_CONFIG_5GF                (3)

typedef enum {
  MAP_FRONTHAUL_BSS = 0x20,
  MAP_BACKHAUL_BSS = 0x40,
  MAP_BACKHAUL_STA = 0x80
} MAP_BSS_TYPE_T;

typedef enum {
  MAP_DISABLED = 0,
  MAP_CONTROLLER,
  MAP_AGENT,
  MAP_CONTROLLER_WFA = 129,
  MAP_AGENT_WFA = 130,
  MAP_CONTROLLER_WFA_R2 = 131,
  MAP_AGENT_WFA_R2 = 132
} MAP_ROLE_TYPE_T;

struct config_info {
	unsigned char config_type;
	char *        ssid;
	char *        network_key;
	unsigned char network_type;
};

struct bss_info {
	char ssid[33];
	char *ssid_base64;
	char network_key[64];
	char *network_key_base64;
	int  network_type;
	int  is_enabled;
	int  encrypt_type;
};
////////////////////////////////////////////////////////////////////////////////
struct radio_info {
	//per radio config data
	unsigned char    radio_type;
	unsigned char    radio_channel;
	unsigned char    radio_band_width;
	char             repeater_ssid[33];
	char            *repeater_ssid_base64;
	unsigned char    bss_nr;
	struct bss_info *bss_data;
};

struct mib_info {
	int                reg_domain;
	int                op_mode;
	int                map_role;
	char               device_name_buffer[30];
	int                map_configured_band;
	unsigned char      radio_nr;
	struct radio_info *radio_data;
};
////////////////////////////////////////////////////////////////////////////////

void rtk_stop_multi_ap_service();

int rtk_setup_multi_ap_block(unsigned char map_state);

int rtk_start_multi_ap_service();

uint8_t map_read_mib_to_config(struct mib_info *mib_data);

void map_fill_config_data(struct mib_info *mib_data, struct config_info **config_data, unsigned char *config_nr);

uint8_t map_update_config_file(struct mib_info *mib_data, char *config_file_path_from, char *config_file_path_to, uint8_t mode);

uint8_t map_write_mib_data(struct mib_info *mib_data, char *file_path);

void map_free_mib_data();

void map_write_to_config(FILE *fp, unsigned char config_nr, char **config_array);

void map_write_to_config_dec(FILE *fp, unsigned char config_nr, unsigned char *config_array);

#endif
