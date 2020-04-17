#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <dirent.h>
#include <string.h>
#include <ctype.h>
#include <unistd.h>
#include <signal.h>

#include "apmib.h"
#include "map_init.h"
#include "sys_utility.h"
#include "sysconf.h"

#define RADIO_NUMBER 2

enum {
	MODE_CONTROLLER,
	MODE_AGENT,
	MODE_WFA_TEST
};

static const uint8_t base64_table[65] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

uint8_t *map_base64_encode(const uint8_t *src, size_t len,
                           size_t *out_len)
{
	uint8_t *      out, *pos;
	const uint8_t *end, *in;
	size_t         olen;
	int            line_len;

	olen = len * 4 / 3 + 4; /* 3-byte blocks to 4-byte */
	olen += olen / 72;      /* line feeds */
	olen++;                 /* nul termination */
	if (olen < len)
		return NULL; /* integer overflow */
	out = malloc(olen);
	if (out == NULL)
		return NULL;

	end      = src + len;
	in       = src;
	pos      = out;
	line_len = 0;
	while (end - in >= 3) {
		*pos++ = base64_table[in[0] >> 2];
		*pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
		*pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
		*pos++ = base64_table[in[2] & 0x3f];
		in += 3;
		line_len += 4;
		// if (line_len >= 72) {
		// 	*pos++ = '\n';
		// 	line_len = 0;
		// }
	}

	if (end - in) {
		*pos++ = base64_table[in[0] >> 2];
		if (end - in == 1) {
			*pos++ = base64_table[(in[0] & 0x03) << 4];
			*pos++ = '=';
		} else {
			*pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
			*pos++ = base64_table[(in[1] & 0x0f) << 2];
		}
		*pos++ = '=';
		line_len += 4;
	}

	// if (line_len)
	// 	*pos++ = '\n';

	*pos = '\0';
	if (out_len)
		*out_len = pos - out;
	return out;
}

void map_write_to_config(FILE *fp, unsigned char config_nr, char **config_array)
{
	int i;
	for (i = 0; i < config_nr; i++) {
		fprintf(fp, "%s", config_array[i]);
		if (i < (config_nr - 1)) {
			fprintf(fp, ",");
		} else {
			fprintf(fp, "\n");
		}
	}
}

void map_write_to_config_dec(FILE *fp, unsigned char config_nr, unsigned char *config_array)
{
	int i;
	for (i = 0; i < config_nr; i++) {
		fprintf(fp, "%d", config_array[i]);
		if (i < (config_nr - 1)) {
			fprintf(fp, ",");
		} else {
			fprintf(fp, "\n");
		}
	}
}

uint8_t map_read_mib_to_config(struct mib_info *mib_data)
{
	if (NULL == mib_data) {
		return 1;
	}

	const char dummy_ssid[10] = "dummyssid";
	const char dummy_key[10]  = "dummykey";

	apmib_get(MIB_MAP_DEVICE_NAME, (void *)mib_data->device_name_buffer);

	apmib_get(MIB_MAP_CONFIGURED_BAND, (void *)&mib_data->map_configured_band);

	apmib_get(MIB_HW_REG_DOMAIN, (void *)&mib_data->reg_domain);

	apmib_get(MIB_MAP_CONTROLLER, (void *)&mib_data->map_role);

	apmib_get(MIB_OP_MODE, (void *)&mib_data->op_mode);

	int i = 0, j = 0;

	size_t base64_key_len = 0;

	if (NULL != mib_data->radio_data) {
		return 1;
	}

	for (i = 0; i < RADIO_NUMBER; i++) {
		mib_data->radio_nr += 1;
		mib_data->radio_data               = (struct radio_info *)realloc(mib_data->radio_data, sizeof(struct radio_info) * mib_data->radio_nr);
		mib_data->radio_data[i].bss_nr     = 0;
		mib_data->radio_data[i].bss_data   = NULL;
		mib_data->radio_data[i].radio_type = 0xFF;

		if (0 == i) {
#ifdef CONFIG_BAND_2G_ON_WLAN0
			mib_data->radio_data[i].radio_type = MAP_CONFIG_2G;
#else
			mib_data->radio_data[i].radio_type = MAP_CONFIG_5GF;
#endif
			if (!apmib_get(MIB_REPEATER_SSID1, (void *)mib_data->radio_data[i].repeater_ssid)) {
				printf("Error reading mib in update_config_file!\n");
				return 0;
			}
		} else if (1 == i) {
#ifdef CONFIG_BAND_2G_ON_WLAN0
			mib_data->radio_data[i].radio_type = MAP_CONFIG_5GF;
#else
			mib_data->radio_data[i].radio_type = MAP_CONFIG_2G;
#endif
			if (!apmib_get(MIB_REPEATER_SSID2, (void *)mib_data->radio_data[i].repeater_ssid)) {
				printf("Error reading mib in update_config_file!\n");
				return 0;
			}
		}

		wlan_idx  = i;
		vwlan_idx = 0;

		if (!apmib_get(MIB_WLAN_CHANNEL, (void *)&mib_data->radio_data[i].radio_channel)) {
			printf("Error reading mib in update_config_file!\n");
			return 0;
		}

		if (!apmib_get(MIB_WLAN_CHANNEL_BONDING, (void *)&mib_data->radio_data[i].radio_band_width)) {
			printf("Error reading mib in update_config_file!\n");
			return 0;
		}

		mib_data->radio_data[i].repeater_ssid_base64 = map_base64_encode(mib_data->radio_data[i].repeater_ssid, strlen(mib_data->radio_data[i].repeater_ssid), &base64_key_len);

		for (j = 0; j < NUM_VWLAN_INTERFACE + 1; j++) {
			mib_data->radio_data[i].bss_nr += 1;
			mib_data->radio_data[i].bss_data = (struct bss_info *)realloc(mib_data->radio_data[i].bss_data, sizeof(struct bss_info) * mib_data->radio_data[i].bss_nr);

			vwlan_idx = j;

			if (!apmib_get(MIB_WLAN_WLAN_DISABLED, (void *)&mib_data->radio_data[i].bss_data[j].is_enabled)) {
				printf("Error reading mib in update_config_file!\n");
				return 0;
			}

			mib_data->radio_data[i].bss_data[j].is_enabled = !mib_data->radio_data[i].bss_data[j].is_enabled;

			if (!apmib_get(MIB_WLAN_SSID, (void *)mib_data->radio_data[i].bss_data[j].ssid)) {
				printf("Error reading mib in update_config_file!\n");
				return 0;
			}
			//Insert dummy data for empty SSID
			if (0 == strlen(mib_data->radio_data[i].bss_data[j].ssid)) {
				// printf("read mib of ssid is empty, set dummy value...\n");
				strcpy(mib_data->radio_data[i].bss_data[j].ssid, dummy_ssid);
			}

			if (!apmib_get(MIB_WLAN_MAP_BSS_TYPE, (void *)&mib_data->radio_data[i].bss_data[j].network_type)) {
				printf("Error reading mib in update_config_file!\n");
				return 0;
			}

			if (!apmib_get(MIB_WLAN_ENCRYPT, (void *)&mib_data->radio_data[i].bss_data[j].encrypt_type)) {
				printf("Error reading mib in update_config_file!\n");
				return 0;
			}

			if (!apmib_get(MIB_WLAN_WPA_PSK, (void *)mib_data->radio_data[i].bss_data[j].network_key)) {
				printf("Error reading mib in update_config_file!\n");
				return 0;
			}
			//Insert dummy data for empty PSK
			if (0 == mib_data->radio_data[i].bss_data[j].encrypt_type) {
				//printf("read mib[wlan%d_vap%d] of network_key is empty, set dummy value...\n", i, j);
				strcpy(mib_data->radio_data[i].bss_data[j].network_key, dummy_key);
			}

			mib_data->radio_data[i].bss_data[j].network_key_base64 = map_base64_encode(mib_data->radio_data[i].bss_data[j].network_key, strlen(mib_data->radio_data[i].bss_data[j].network_key), &base64_key_len);
			mib_data->radio_data[i].bss_data[j].ssid_base64        = map_base64_encode(mib_data->radio_data[i].bss_data[j].ssid, strlen(mib_data->radio_data[i].bss_data[j].ssid), &base64_key_len);
		}
	}
}

void map_fill_config_data(struct mib_info *mib_data, struct config_info **config_data, unsigned char *config_nr)
{
	int i, j;

	for (i = 0; i < mib_data->radio_nr; i++) {
		for (j = 0; j < mib_data->radio_data[i].bss_nr; j++) {
			struct bss_info *bss_data = &mib_data->radio_data[i].bss_data[j];
			//if interface was disabled
			if (!bss_data->is_enabled && 0 == j) {
				(*config_nr)++;
				*config_data                                = (struct config_info *)realloc(*config_data, *config_nr * sizeof(struct config_info));
				(*config_data)[*config_nr - 1].config_type  = mib_data->radio_data[i].radio_type;
				(*config_data)[*config_nr - 1].ssid         = "VEVBUkRPV04=";     // "TEARDOWN"
				(*config_data)[*config_nr - 1].network_key  = "aW52YWxpZGtleQ=="; // "invalidkey";
				(*config_data)[*config_nr - 1].network_type = 0x10;               // TEAR_DOWN
			}
			//if enabled
			if (bss_data->is_enabled) {
				// Skip vxd configuration
				if (j == NUM_VWLAN_INTERFACE) {
					continue;
				}
				(*config_nr)++;
				*config_data                                = (struct config_info *)realloc(*config_data, *config_nr * sizeof(struct config_info));
				(*config_data)[*config_nr - 1].config_type  = mib_data->radio_data[i].radio_type;
				(*config_data)[*config_nr - 1].ssid         = bss_data->ssid_base64;
				(*config_data)[*config_nr - 1].network_key  = bss_data->network_key_base64;
				(*config_data)[*config_nr - 1].network_type = (unsigned char)bss_data->network_type;
			}
		}
	}
}

uint8_t map_update_config_file(struct mib_info *mib_data, char *config_file_path_from, char *config_file_path_to, uint8_t mode)
{
	//check for path validity
	char *ext = strrchr(config_file_path_from, '.');
	if (!ext || strcmp(ext, ".conf")) {
		printf("[CONFIG] Invalid config path: %s\n", config_file_path_from);
		return 1;
	}

	//start to read from mib for config data
	struct config_info *config_data = NULL;
	unsigned char       config_nr   = 0;

	if (MODE_CONTROLLER == mode) {
		map_fill_config_data(mib_data, &config_data, &config_nr);
	}

	//read the original config file for global setting
	FILE *fp = fopen(config_file_path_from, "r");
	if (fp == NULL) {
		printf("Error opening config file!\n");
		return 1;
	}

	char ** lines = NULL;
	size_t  len   = 0;
	ssize_t read;
	int     line_nr = 0;
	int     i       = 0;
	lines           = (char **)malloc(1 * sizeof(char *));
	lines[i]        = NULL;
	while ((read = getline(&lines[i], &len, fp)) != -1) {
		if ('\n' == lines[i][0]) {
			continue;
		}

		if ('[' == lines[i][0]) {
			if (0 == strncmp(lines[i], "[global]", 8)) {
				i        = 1;
				lines    = (char **)realloc(lines, (i + 1) * sizeof(char *));
				lines[i] = NULL;
				continue;
			} else {
				break;
			}
		}

		if (0 != i) {
			i++;
			lines    = (char **)realloc(lines, (i + 1) * sizeof(char *));
			lines[i] = NULL;
		}
	}

	line_nr = i;
	fclose(fp);
	//write info into the new config file
	fp = fopen(config_file_path_to, "w");
	for (i = 0; i < line_nr; i++) {
		fprintf(fp, "%s", lines[i]);
		free(lines[i]);
	}
	free(lines);

	char device_name_buffer[30];
	apmib_get(MIB_MAP_DEVICE_NAME, (void *)device_name_buffer);
	fprintf(fp, "%s", "device_name = ");
	fprintf(fp, "%s\n", device_name_buffer);
#ifdef CONFIG_BAND_5G_ON_WLAN0
	fprintf(fp, "radio_name_5gh = wlan0\n");
	fprintf(fp, "radio_name_5gl = wlan0\n");
	fprintf(fp, "radio_name_24g = wlan1\n");
#elif defined CONFIG_BAND_2G_ON_WLAN0
	fprintf(fp, "radio_name_5gh = wlan1\n");
	fprintf(fp, "radio_name_5gl = wlan1\n");
	fprintf(fp, "radio_name_24g = wlan0\n");
#endif

	fprintf(fp, "vap_prefix = va\n");

	if (MODE_WFA_TEST == mode) {
		FILE *fp_radio = fopen("/var/multiap_radio.conf", "w");
#ifdef CONFIG_BAND_5G_ON_WLAN0
		fprintf(fp_radio, "radio_name_5gh = wlan0\n");
		fprintf(fp_radio, "radio_name_5gl = wlan0\n");
		fprintf(fp_radio, "radio_name_24g = wlan1\n");
#elif defined CONFIG_BAND_2G_ON_WLAN0
		fprintf(fp_radio, "radio_name_5gh = wlan1\n");
		fprintf(fp_radio, "radio_name_5gl = wlan1\n");
		fprintf(fp_radio, "radio_name_24g = wlan0\n");
#endif
		fprintf(fp_radio, "vap_prefix = va\n\n");

		fclose(fp_radio);
	}

	//if it is agent or test mode device, stop here
	if (MODE_CONTROLLER != mode) {
		fclose(fp);
		return 0;
	}

	unsigned char  config_number = 0;
	char **        ssids         = (char **)malloc(1 * sizeof(char *));
	char **        network_keys  = (char **)malloc(1 * sizeof(char *));
	unsigned char *network_types = (unsigned char *)malloc(1 * sizeof(unsigned char));

	for (i = 0; i < config_nr; i++) {
		if (MAP_CONFIG_2G == config_data[i].config_type) {
			config_number++;
			ssids                            = (char **)realloc(ssids, (config_number) * sizeof(char *));
			network_keys                     = (char **)realloc(network_keys, (config_number) * sizeof(char *));
			network_types                    = (unsigned char *)realloc(network_types, (config_number) * sizeof(unsigned char));
			ssids[config_number - 1]         = config_data[i].ssid;
			network_keys[config_number - 1]  = config_data[i].network_key;
			network_types[config_number - 1] = config_data[i].network_type;
		}
	}

	if (config_number) {
		fprintf(fp, "[2.4g_config_data]\n");

		fprintf(fp, "number = %d\n", config_number);

		fprintf(fp, "ssid = ");
		map_write_to_config(fp, config_number, ssids);

		fprintf(fp, "network_key = ");
		map_write_to_config(fp, config_number, network_keys);

		fprintf(fp, "network_type = ");
		map_write_to_config_dec(fp, config_number, network_types);
	}

	free(ssids);
	free(network_keys);
	free(network_types);

	config_number = 0;
	ssids         = (char **)malloc(1 * sizeof(char *));
	network_keys  = (char **)malloc(1 * sizeof(char *));
	network_types = (unsigned char *)malloc(1 * sizeof(unsigned char));

	for (i = 0; i < config_nr; i++) {
		if (MAP_CONFIG_5GL == config_data[i].config_type || MAP_CONFIG_5GF == config_data[i].config_type) {
			config_number++;
			ssids                            = (char **)realloc(ssids, (config_number) * sizeof(char *));
			network_keys                     = (char **)realloc(network_keys, (config_number) * sizeof(char *));
			network_types                    = (unsigned char *)realloc(network_types, (config_number) * sizeof(unsigned char));
			ssids[config_number - 1]         = strdup(config_data[i].ssid);
			network_keys[config_number - 1]  = strdup(config_data[i].network_key);
			network_types[config_number - 1] = config_data[i].network_type;
		}
	}

	if (config_number) {
		fprintf(fp, "[5gl_config_data]\n");

		fprintf(fp, "number = %d\n", config_number);

		fprintf(fp, "ssid = ");
		map_write_to_config(fp, config_number, ssids);

		fprintf(fp, "network_key = ");
		map_write_to_config(fp, config_number, network_keys);

		fprintf(fp, "network_type = ");
		map_write_to_config_dec(fp, config_number, network_types);
	}

	free(ssids);
	free(network_keys);
	free(network_types);

	config_number = 0;
	ssids         = (char **)malloc(1 * sizeof(char *));
	network_keys  = (char **)malloc(1 * sizeof(char *));
	network_types = (unsigned char *)malloc(1 * sizeof(unsigned char));

	for (i = 0; i < config_nr; i++) {
		if (MAP_CONFIG_5GH == config_data[i].config_type || MAP_CONFIG_5GF == config_data[i].config_type) {
			config_number++;
			ssids                            = (char **)realloc(ssids, (config_number) * sizeof(char *));
			network_keys                     = (char **)realloc(network_keys, (config_number) * sizeof(char *));
			network_types                    = (unsigned char *)realloc(network_types, (config_number) * sizeof(unsigned char));
			ssids[config_number - 1]         = strdup(config_data[i].ssid);
			network_keys[config_number - 1]  = strdup(config_data[i].network_key);
			network_types[config_number - 1] = config_data[i].network_type;
		}
	}

	if (config_number) {
		fprintf(fp, "[5gh_config_data]\n");

		fprintf(fp, "number = %d\n", config_number);

		fprintf(fp, "ssid = ");
		map_write_to_config(fp, config_number, ssids);

		fprintf(fp, "network_key = ");
		map_write_to_config(fp, config_number, network_keys);

		fprintf(fp, "network_type = ");
		map_write_to_config_dec(fp, config_number, network_types);
	}

	free(ssids);
	free(network_keys);
	free(network_types);

	fclose(fp);
	return 0;
}

uint8_t map_write_mib_data(struct mib_info *mib_data, char *file_path)
{
	//check for path validity
	char *ext = strrchr(file_path, '.');
	if (!ext || strcmp(ext, ".conf")) {
		printf("[CONFIG] Invalid config path: %s\n", file_path);
		return 1;
	}

	FILE *fp = fopen(file_path, "w");

	fprintf(fp, "[global]\n");

	fprintf(fp, "%s", "configured_band = ");
	fprintf(fp, "%d\n", mib_data->map_configured_band);

	fprintf(fp, "%s", "hw_reg_domain = ");
	fprintf(fp, "%d\n", mib_data->reg_domain);

	int i = 0, j = 0;
	for (i = 0; i < mib_data->radio_nr; i++) {
		if (MAP_CONFIG_2G == mib_data->radio_data[i].radio_type) {
			fprintf(fp, "[mib_info_2.4g]\n");
		} else if (MAP_CONFIG_5GL == mib_data->radio_data[i].radio_type || MAP_CONFIG_5GF == mib_data->radio_data[i].radio_type) {
			fprintf(fp, "[mib_info_5gl]\n");
		} else if (MAP_CONFIG_5GH == mib_data->radio_data[i].radio_type || MAP_CONFIG_5GF == mib_data->radio_data[i].radio_type) {
			fprintf(fp, "[mib_info_5gh]\n");
		} else {
			continue;
		}

		fprintf(fp, "channel = %d\n", mib_data->radio_data[i].radio_channel);
		fprintf(fp, "channel_bandwidth = %d\n", mib_data->radio_data[i].radio_band_width);
		fprintf(fp, "repeater_ssid = %s\n", mib_data->radio_data[i].repeater_ssid_base64);
		fprintf(fp, "bss_number = %d\n", mib_data->radio_data[i].bss_nr);

		char **        ssids         = (char **)malloc((mib_data->radio_data[i].bss_nr) * sizeof(char *));
		char **        network_keys  = (char **)malloc((mib_data->radio_data[i].bss_nr) * sizeof(char *));
		unsigned char *network_types = (unsigned char *)malloc((mib_data->radio_data[i].bss_nr) * sizeof(unsigned char));
		unsigned char *is_enableds   = (unsigned char *)malloc((mib_data->radio_data[i].bss_nr) * sizeof(unsigned char));
		unsigned char *encrypt_types = (unsigned char *)malloc((mib_data->radio_data[i].bss_nr) * sizeof(unsigned char));

		for (j = 0; j < mib_data->radio_data[i].bss_nr; j++) {
			ssids[j]         = mib_data->radio_data[i].bss_data[j].ssid_base64;
			network_keys[j]  = mib_data->radio_data[i].bss_data[j].network_key_base64;
			network_types[j] = mib_data->radio_data[i].bss_data[j].network_type;
			is_enableds[j]   = mib_data->radio_data[i].bss_data[j].is_enabled;
			encrypt_types[j] = mib_data->radio_data[i].bss_data[j].encrypt_type;
		}
		fprintf(fp, "ssid = ");
		map_write_to_config(fp, mib_data->radio_data[i].bss_nr, ssids);
		fprintf(fp, "network_key = ");
		map_write_to_config(fp, mib_data->radio_data[i].bss_nr, network_keys);
		fprintf(fp, "network_type = ");
		map_write_to_config_dec(fp, mib_data->radio_data[i].bss_nr, network_types);
		fprintf(fp, "is_enabled = ");
		map_write_to_config_dec(fp, mib_data->radio_data[i].bss_nr, is_enableds);
		fprintf(fp, "encrypt_type = ");
		map_write_to_config_dec(fp, mib_data->radio_data[i].bss_nr, encrypt_types);

		free(ssids);
		free(network_keys);
		free(network_types);
		free(is_enableds);
		free(encrypt_types);
	}

	fclose(fp);
	return 0;
}

void map_free_mib_data(struct mib_info *mib_data)
{
	int i = 0, j = 0;
	for (i = 0; i < mib_data->radio_nr; i++) {
		for (j = 0; j < mib_data->radio_nr; j++) {
			free(mib_data->radio_data[i].bss_data[j].ssid_base64);
			free(mib_data->radio_data[i].bss_data[j].network_key_base64);
		}
		free(mib_data->radio_data[i].bss_data);
		free(mib_data->radio_data[i].repeater_ssid_base64);
	}
	free(mib_data->radio_data);
}

void rtk_stop_multi_ap_service()
{
	if (find_pid_by_name("map_checker") > 0) {
		system("killall -9 map_checker >/dev/null 2>&1");
	}

	if (find_pid_by_name("map_controller") > 0) {
		system("killall -9 map_controller >/dev/null 2>&1");
	}

	if (find_pid_by_name("map_agent") > 0) {
		system("killall -9 map_agent >/dev/null 2>&1");
	}

	system("rm /tmp/map_*.txt >/dev/null 2>&1");
}

int rtk_setup_multi_ap_block(unsigned char map_state)
{
	int ret = 0;

	ret |= RunSystemCmd(NULL_FILE, "ebtables", "-F", NULL_STR);

	if (map_state) {
		//ebtables -A FORWARD  -d 01:80:c2:00:00:13 -j DROP
		ret |= RunSystemCmd(NULL_FILE, "ebtables", "-A", "FORWARD", "-d", "01:80:c2:00:00:13", "-j", "DROP", NULL_STR);
	}
	return ret;
}

int rtk_start_multi_ap_service()
{
	int map_state = 0, map_log_level = 0;

	unsigned char map_kill_count = 0;

	int i = 0;

	char log_level_string[10] = { 0 };

	char cmd[128] = { 0 };

	//set default name for the map device if device_name is empty
	char map_device_name[30];

	int status = 0xFF;

	rtk_stop_multi_ap_service();

	apmib_get(MIB_MAP_DEVICE_NAME, (void *)map_device_name);

	apmib_get(MIB_MAP_CONTROLLER, (void *)&map_state);

	apmib_get(MIB_MAP_LOG_LEVEL, (void *)&map_log_level);

	rtk_setup_multi_ap_block(map_state);

	if (0 == find_pid_by_name("syslogd")) {
		system("syslogd >/dev/null 2>&1");
	}

	if (0 == map_state)
		return 0;

	struct mib_info mib_data = { 0 };
	mib_data.radio_data      = NULL;

	map_read_mib_to_config(&mib_data);

	map_write_mib_data(&mib_data, "/var/multiap_mib.conf");

	for (i = 0; i < map_log_level; i++) {
		sprintf(log_level_string, "%sv", log_level_string);
	}

	switch (map_state) {
	case MAP_CONTROLLER: {
		int op_mode = 0;
		apmib_get(MIB_OP_MODE, (void *)&op_mode);
		if (WISP_MODE == op_mode) {
			system("iwpriv wlan0-vxd set_mib a4_enable=0"); /*set controller vxd a4 disabled*/
			system("iwpriv wlan1-vxd set_mib a4_enable=0"); /*set controller vxd a4 disabled*/
		}

		if (!strcmp(map_device_name, "")) {
			char *default_name_controller = "EasyMesh_Controller";
			// set into mib
			if (!apmib_set(MIB_MAP_DEVICE_NAME, (void *)default_name_controller)) {
				printf("[Error] : Failed to set AP mib MIB_MAP_DEVICE_NAME\n");
				return 1;
			}
		}
		map_update_config_file(&mib_data, "/etc/multiap.conf", "/var/multiap.conf", MODE_CONTROLLER);
		while (find_pid_by_name("map_controller") > 0) {
			if (map_kill_count > 10) {
				break;
			}
			system("killall -9 map_controller >/dev/null 2>&1");
			usleep(100 * 1000);
			map_kill_count++;
		}
		sprintf(cmd, "map_controller -d%s > /dev/console", log_level_string);
		status = system(cmd);

		printf("Multi AP controller daemon is running with %d\n", status);

		sprintf(cmd, "map_checker -%s &", log_level_string);
		status = system(cmd);
		printf("Multi AP checker daemon is running with %d\n", status);
		break;
	}
	case MAP_AGENT: {
		if (!strcmp(map_device_name, "")) {
			char *default_name_agent = "EasyMesh_Agent";
			// set into mib
			if (!apmib_set(MIB_MAP_DEVICE_NAME, (void *)default_name_agent)) {
				printf("[Error] : Failed to set AP mib MIB_MAP_DEVICE_NAME\n");
				return 1;
			}
		}
		map_update_config_file(&mib_data, "/etc/multiap.conf", "/var/multiap.conf", MODE_AGENT);
		while (find_pid_by_name("map_agent") > 0) {
			if (map_kill_count > 10) {
				break;
			}
			system("killall -9 map_agent >/dev/null 2>&1");
			usleep(100 * 1000);
			map_kill_count++;
		}
		sprintf(cmd, "map_agent -d%s > /dev/console", log_level_string);
		status = system(cmd);

		printf("Multi AP agent daemon is running with %d\n", status);

		sprintf(cmd, "map_checker -%s &", log_level_string);
		status = system(cmd);
		printf("Multi AP checker daemon is running with %d\n", status);
		break;
	}
	case MAP_CONTROLLER_WFA:
	case MAP_CONTROLLER_WFA_R2: {
#ifdef RTK_MULTI_AP_WFA
		system("ifconfig eth0 up");
#endif
		if (!strcmp(map_device_name, "")) {
			char *default_name_agent = "EasyMesh_Test_Controller";
			// set into mib
			if (!apmib_set(MIB_MAP_DEVICE_NAME, (void *)default_name_agent)) {
				printf("[Error] : Failed to set AP mib MIB_MAP_DEVICE_NAME\n");
				return 1;
			}
		}
		map_update_config_file(&mib_data, "/etc/multiap.conf", "/var/multiap.conf", MODE_WFA_TEST);
		while (find_pid_by_name("map_controller") > 0) {
			if (map_kill_count > 10) {
				break;
			}
			system("killall -9 map_controller > /dev/null 2>&1");
			usleep(100 * 1000);
			map_kill_count++;
		}
		sprintf(cmd, "map_controller -d%st > /dev/console", log_level_string);
		status = system(cmd);

		printf("Multi AP controller logo test daemon is running with %d\n", status);

		break;
	}
	case MAP_AGENT_WFA:
	case MAP_AGENT_WFA_R2: {
#ifdef RTK_MULTI_AP_WFA
		if (-1 == access("/tmp/map_backhaul_teardown", F_OK)) {
			system("ifconfig wlan0-vxd down; ifconfig wlan1-vxd down; ifconfig wlan2-vxd down; ifconfig eth0 down > /dev/null 2>&1");
			system("echo 1 > /tmp/map_backhaul_teardown");
			break;
		}
#endif
		if (!strcmp(map_device_name, "")) {
			char *default_name_agent = "EasyMesh_Test_Agent";
			// set into mib
			if (!apmib_set(MIB_MAP_DEVICE_NAME, (void *)default_name_agent)) {
				printf("[Error] : Failed to set AP mib MIB_MAP_DEVICE_NAME\n");
				return 1;
			}
		}
		map_update_config_file(&mib_data, "/etc/multiap.conf", "/var/multiap.conf", MODE_WFA_TEST);
		while (find_pid_by_name("map_agent") > 0) {
			if (map_kill_count > 10) {
				break;
			}
			system("killall -9 map_agent > /dev/null 2>&1");
			usleep(100 * 1000);
			map_kill_count++;
		}
		if (-1 == access("/tmp/map_lock", F_OK)) {

			sprintf(cmd, "map_agent -d%st > /dev/console", log_level_string);
			status = system(cmd);

			printf("Multi AP agent logo test daemon is running with %d\n", status);
		}
		break;
	}
	}

	map_free_mib_data(&mib_data);

	return 0;
}
