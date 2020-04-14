cmd_drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.o := msdk-linux-gcc -Wp,-MD,drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/.halmac_mimo_88xx.o.d  -nostdinc -isystem /opt/workspace/server20191211/rtl819x_v3.4.14b/toolchain/msdk-4.8.5-mips-EL-3.10-u0.9.33-m32ut-180418/bin/../lib/gcc/mips-linux-uclibc/4.8.5/include -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include -Iarch/mips-ori/include/generated  -Iinclude -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi -Iarch/mips-ori/include/generated/uapi -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi -Iinclude/generated/uapi -include /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/linux/kconfig.h -D__KERNEL__ -DVMLINUX_LOAD_ADDRESS=0x80000000 -DDATAOFFSET=0 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -std=gnu89 -O2 -mno-check-zero-division -mabi=32 -G 0 -mno-abicalls -fno-pic -pipe -msoft-float -ffreestanding -EL -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__ -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__ -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__ -march=mips32r2 -Wa,-mips32r2 -Wa,--trap -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/bsp -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -DDM_ODM_SUPPORT_TYPE=0x01 -Idrivers/net/wireless/rtl8192cd -Idrivers/net/wireless/rtl8192cd/phydm -Idrivers/net/wireless/rtl8192cd -Idrivers/net/wireless/rtl8192cd/WlanHAL/ -Idrivers/net/wireless/rtl8192cd/WlanHAL/Include -Idrivers/net/wireless/rtl8192cd/WlanHAL/HalHeader -Idrivers/net/wireless/rtl8192cd/core/WlanHAL -Idrivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX -Idrivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX -Idrivers/net/wireless/rtl8192cd/core/WlanHAL/RTL88XX -Idrivers/net/wireless/rtl8192cd/efuse_97f -Idrivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/RTL8197G -Idrivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/RTL8812F -Idrivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX -I/opt/workspace/server20191211/rtl819x_v3.4.14b/target -D'SVN_REV="exported"' -fsigned-char    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(halmac_mimo_88xx)"  -D"KBUILD_MODNAME=KBUILD_STR(rtl8192cd)" -c -o drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.o drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.c

source_drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.o := drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.c

deps_drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.o := \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_api.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_2_platform.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../../../8192cd_cfg.h \
    $(wildcard include/config/openwrt/sdk.h) \
    $(wildcard include/config/rtl8192cd.h) \
    $(wildcard include/config/rtl/ulinker/brsc.h) \
    $(wildcard include/config/arch/rtl8198f.h) \
    $(wildcard include/config/rtl/multi/lan/dev.h) \
    $(wildcard include/config/rtl/8198f.h) \
    $(wildcard include/config/enable/cci400.h) \
    $(wildcard include/config/rtl/819x.h) \
    $(wildcard include/config/rtl8672.h) \
    $(wildcard include/config/rtl8196c.h) \
    $(wildcard include/config/rtl/8196c.h) \
    $(wildcard include/config/rtl/wlan/hal/not/exist.h) \
    $(wildcard include/config/wlan/not/hal/exist.h) \
    $(wildcard include/config/rtl/wlan/conf/txt/not/exist.h) \
    $(wildcard include/config/wlan/conf/txt/exist.h) \
    $(wildcard include/config/net/pci.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/arch/cortina/g3.h) \
    $(wildcard include/config/arch/cortina/g3hgu.h) \
    $(wildcard include/config/smp/load/balance/support.h) \
    $(wildcard include/config/rg/wlan/hwnat/acceleration.h) \
    $(wildcard include/config/arch/luna/slave.h) \
    $(wildcard include/config/rg/netif/rx/queue/support.h) \
    $(wildcard include/config/rtl/proc/new.h) \
    $(wildcard include/config/rtl8190/priv/skb.h) \
    $(wildcard include/config/rtl8196b.h) \
    $(wildcard include/config/rtl8198.h) \
    $(wildcard include/config/rtl/8198.h) \
    $(wildcard include/config/rtl/819x/ecos.h) \
    $(wildcard include/config/rtl/custom/passthru.h) \
    $(wildcard include/config/rtl/custom/passthru/pppoe.h) \
    $(wildcard include/config/rtl/92d/support.h) \
    $(wildcard include/config/rtl/8812/support.h) \
    $(wildcard include/config/rtl/8881a.h) \
    $(wildcard include/config/use/pcie/slot/0.h) \
    $(wildcard include/config/use/pcie/slot/1.h) \
    $(wildcard include/config/rtl/8881a/selective.h) \
    $(wildcard include/config/wlan/hal/8814ae.h) \
    $(wildcard include/config/rtl/8197f.h) \
    $(wildcard include/config/rtl/dual/pcieslot/biwlan/d.h) \
    $(wildcard include/config/rtl/dual/pcieslot/biwlan.h) \
    $(wildcard include/config/rtl/92d/dmdp.h) \
    $(wildcard include/config/wlan/hal/8881a.h) \
    $(wildcard include/config/wlan/hal/dual/8198f.h) \
    $(wildcard include/config/wlan/hal/8198f.h) \
    $(wildcard include/config/rtl/8814b.h) \
    $(wildcard include/config/rtl/8197g.h) \
    $(wildcard include/config/wlan/hal/8197g/2mac.h) \
    $(wildcard include/config/wlan/hal/8197g.h) \
    $(wildcard include/config/rtl/92c/support.h) \
    $(wildcard include/config/rtk/voip/board.h) \
    $(wildcard include/config/rtl/8198c.h) \
    $(wildcard include/config/slot/0/92d.h) \
    $(wildcard include/config/rtl/8197d.h) \
    $(wildcard include/config/rtl/8197dl.h) \
    $(wildcard include/config/rtl/mesh/support.h) \
    $(wildcard include/config/rtk/mesh.h) \
    $(wildcard include/config/rtl/mesh/metric/refine.h) \
    $(wildcard include/config/rtk/wps/mesh/support.h) \
    $(wildcard include/config/rtk/wps/mesh.h) \
    $(wildcard include/config/rtl8196b/ap/root.h) \
    $(wildcard include/config/rtl8196b/tr.h) \
    $(wildcard include/config/rtl8196b/gw.h) \
    $(wildcard include/config/rtl/8196c/gw.h) \
    $(wildcard include/config/rtl/8198/gw.h) \
    $(wildcard include/config/rtl8196b/kld.h) \
    $(wildcard include/config/rtl8196b/tld.h) \
    $(wildcard include/config/rtl8196c/ap/root.h) \
    $(wildcard include/config/rtl8196c/ap/hcm.h) \
    $(wildcard include/config/rtl8198/ap/root.h) \
    $(wildcard include/config/rtl/8198/ap/root.h) \
    $(wildcard include/config/rtl8196c/client/only.h) \
    $(wildcard include/config/rtl/8198/nfbi/board.h) \
    $(wildcard include/config/rtl8196c/kld.h) \
    $(wildcard include/config/rtl8196c/ec.h) \
    $(wildcard include/config/rtl/8196c/inic.h) \
    $(wildcard include/config/rtl/8198/inband/ap.h) \
    $(wildcard include/config/rtl/819xd.h) \
    $(wildcard include/config/rtl/8196e.h) \
    $(wildcard include/config/rtl/8198b.h) \
    $(wildcard include/config/command.h) \
    $(wildcard include/config/latency.h) \
    $(wildcard include/config/base0.h) \
    $(wildcard include/config/base1.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/rtl/nfjrom/mp.h) \
    $(wildcard include/config/auth/result.h) \
    $(wildcard include/config/rtl/wlan/diagnostic.h) \
    $(wildcard include/config/rtl8196b/gw/8m.h) \
    $(wildcard include/config/pci/hci.h) \
    $(wildcard include/config/rtl/romeperf/24k.h) \
    $(wildcard include/config/rtl/atm/support.h) \
    $(wildcard include/config/wlan/hal/8197f.h) \
    $(wildcard include/config/current/rate/accounting.h) \
    $(wildcard include/config/pcie/power/saving.h) \
    $(wildcard include/config/rtl/8196cs.h) \
    $(wildcard include/config/rtl/88e/support.h) \
    $(wildcard include/config/wlan/hal/8821ce.h) \
    $(wildcard include/config/wlan/hal.h) \
    $(wildcard include/config/slot0h.h) \
    $(wildcard include/config/slot0s.h) \
    $(wildcard include/config/slot1h.h) \
    $(wildcard include/config/slot1s.h) \
    $(wildcard include/config/wlan/hal/8814be.h) \
    $(wildcard include/config/rtl/wds/support.h) \
    $(wildcard include/config/pacp/support.h) \
    $(wildcard include/config/pkt/filter.h) \
    $(wildcard include/config/rtl/comapi/wltools.h) \
    $(wildcard include/config/rtl/client/mode/support.h) \
    $(wildcard include/config/sdio/hci.h) \
    $(wildcard include/config/rtl/multi/clone/support.h) \
    $(wildcard include/config/rtl/support/multi/profile.h) \
    $(wildcard include/config/wlan/hal/8812f.h) \
    $(wildcard include/config/rtl8196b/gw/mp.h) \
    $(wildcard include/config/rtl/triband/support.h) \
    $(wildcard include/config/rtl/fastbridge.h) \
    $(wildcard include/config/rtl8672/bridge/fastpath.h) \
    $(wildcard include/config/rtk/br/shortcut.h) \
    $(wildcard include/config/rtl/no/br/shortcut.h) \
    $(wildcard include/config/rps.h) \
    $(wildcard include/config/mem/limitation.h) \
    $(wildcard include/config/soc/enable/efuse.h) \
    $(wildcard include/config/slot/0/enable/efuse.h) \
    $(wildcard include/config/slot/1/enable/efuse.h) \
    $(wildcard include/config/rtl/new/autoch.h) \
    $(wildcard include/config/rtl/new/iqk.h) \
    $(wildcard include/config/rtl/noise/control/92c.h) \
    $(wildcard include/config/rtl/repeater/mode/support.h) \
    $(wildcard include/config/rtl/crossband/repeater/support.h) \
    $(wildcard include/config/rtl/taroko/offload.h) \
    $(wildcard include/config/pe/enable.h) \
    $(wildcard include/config/rtl/dfs/support.h) \
    $(wildcard include/config/rtl/hw/enc/group/cipher.h) \
    $(wildcard include/config/wlan/hal/8192ee.h) \
    $(wildcard include/config/rtl/vap/support.h) \
    $(wildcard include/config/wlan/hal/8822be.h) \
    $(wildcard include/config/rtl/hs2/support.h) \
    $(wildcard include/config/ieee80211w.h) \
    $(wildcard include/config/ieee80211w/test.h) \
    $(wildcard include/config/rtl/hs2/sigma/support.h) \
    $(wildcard include/config/rtl/hostapd/support.h) \
    $(wildcard include/config/rtl/p2p/support.h) \
    $(wildcard include/config/rtl/tdls/support.h) \
    $(wildcard include/config/wext/priv.h) \
    $(wildcard include/config/rtl/wpa3/support.h) \
    $(wildcard include/config/wlan/hal/8812fe.h) \
    $(wildcard include/config/support/dynamic/txpwr.h) \
    $(wildcard include/config/rtl/sdram/ge/32m.h) \
    $(wildcard include/config/rtl/shrink/memory/size.h) \
    $(wildcard include/config/wlan/mbssid/num.h) \
    $(wildcard include/config/vxd/diff/mac.h) \
    $(wildcard include/config/vxd/diff/mac/drv.h) \
    $(wildcard include/config/rtl/tx/reserve/desc.h) \
    $(wildcard include/config/sbwc.h) \
    $(wildcard include/config/ant/switch.h) \
    $(wildcard include/config/rtl/8881a/ant/switch.h) \
    $(wildcard include/config/slot/0/ant/switch.h) \
    $(wildcard include/config/slot/1/ant/switch.h) \
    $(wildcard include/config/rtl/8197f/ant/switch.h) \
    $(wildcard include/config/rtl/8197g/ant/switch.h) \
    $(wildcard include/config/rtl/wapi/support.h) \
    $(wildcard include/config/rtl/hw/wapi/support.h) \
    $(wildcard include/config/rtk/soc/rtl8198d.h) \
    $(wildcard include/config/rtl865x/cmo.h) \
    $(wildcard include/config/usb.h) \
    $(wildcard include/config/wlan/hal/8822ce.h) \
    $(wildcard include/config/wireless/lan.h) \
    $(wildcard include/config/rtl/delay/refill.h) \
    $(wildcard include/config/slot/0/ext/pa.h) \
    $(wildcard include/config/slot/1/ext/pa.h) \
    $(wildcard include/config/soc/ext/pa.h) \
    $(wildcard include/config/usb/ext/pa.h) \
    $(wildcard include/config/slot/0/ext/lna.h) \
    $(wildcard include/config/slot/1/ext/lna.h) \
    $(wildcard include/config/soc/ext/lna.h) \
    $(wildcard include/config/usb/ext/lna.h) \
    $(wildcard include/config/rtk/vlc/speedup/support.h) \
    $(wildcard include/config/wifi/buffer/limited.h) \
    $(wildcard include/config/veriwave/check.h) \
    $(wildcard include/config/veriwave/macbbtx.h) \
    $(wildcard include/config/veriwave/dig/opmode.h) \
    $(wildcard include/config/veriwave/mu/check.h) \
    $(wildcard include/config/special/env/test.h) \
    $(wildcard include/config/rtl/sta/control/support.h) \
    $(wildcard include/config/rtl/a4/sta/support.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/slot/0/8814ae.h) \
    $(wildcard include/config/slot/1/8814ae.h) \
    $(wildcard include/config/rtl/tx/early/mode/support.h) \
    $(wildcard include/config/rtl/8196d.h) \
    $(wildcard include/config/high/power/ext/pa.h) \
    $(wildcard include/config/slot/0/tx/beamforming.h) \
    $(wildcard include/config/slot/1/tx/beamforming.h) \
    $(wildcard include/config/soc/tx/beamforming.h) \
    $(wildcard include/config/beamforming/support.h) \
    $(wildcard include/config/beamforming.h) \
    $(wildcard include/config/txpwr/lmt.h) \
    $(wildcard include/config/rtk/wlan/event/indicate.h) \
    $(wildcard include/config/support/client/mixed/security.h) \
    $(wildcard include/config/bt/coexist/92ee.h) \
    $(wildcard include/config/offload/function.h) \
    $(wildcard include/config/apple/mfi/support.h) \
    $(wildcard include/config/rtl/simple/config.h) \
    $(wildcard include/config/8814/ap/mac/veri.h) \
    $(wildcard include/config/wlan/pcie/ssc.h) \
    $(wildcard include/config/rtl/pcie/link/protection.h) \
    $(wildcard include/config/wlan/hal/8192fe.h) \
    $(wildcard include/config/rxbd/uncache/coherent.h) \
    $(wildcard include/config/rtl8198f/wlan.h) \
    $(wildcard include/config/luna/wlan/vap/name.h) \
    $(wildcard include/config/rtl/5g/slot/0.h) \
    $(wildcard include/config/8814b/fwlog/printk.h) \
    $(wildcard include/config/8814b/fwlog/file.h) \
    $(wildcard include/config/8814b/fwlog/netlink.h) \
    $(wildcard include/config/cmcc.h) \
    $(wildcard include/config/cu.h) \
    $(wildcard include/config/yueme.h) \
    $(wildcard include/config/rtl9607c.h) \
    $(wildcard include/config/rtl/disable/wlan/mips16.h) \
    $(wildcard include/config/rtl865x/ac.h) \
    $(wildcard include/config/compat/net/dev/ops.h) \
    $(wildcard include/config/dev/xdsl.h) \
    $(wildcard include/config/msc.h) \
    $(wildcard include/config/rtl8196c/revision/b.h) \
    $(wildcard include/config/disable/phydm/debug/function.h) \
    $(wildcard include/config/rtl/wlan/memory/refine.h) \
    $(wildcard include/config/mp/mode/support.h) \
    $(wildcard include/config/auth.h) \
    $(wildcard include/config/wifi/include/wpa/psk.h) \
    $(wildcard include/config/rtl6028.h) \
    $(wildcard include/config/rtl8671.h) \
    $(wildcard include/config/addr.h) \
    $(wildcard include/config/rle0412.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/rtl/noise/control.h) \
    $(wildcard include/config/rtl/92d/int/pa.h) \
    $(wildcard include/config/hwnat/rg.h) \
    $(wildcard include/config/rtl/odm/wlan/driver.h) \
    $(wildcard include/config/rtl865x/kld.h) \
    $(wildcard include/config/rtl/ulinker/wlan/delay/init.h) \
    $(wildcard include/config/dual/cpu/slave.h) \
    $(wildcard include/config/luna/dual/linux.h) \
    $(wildcard include/config/rtl/8812ar/vn/support.h) \
    $(wildcard include/config/rtl/8723b/support.h) \
    $(wildcard include/config/usb/hci.h) \
    $(wildcard include/config/wlan/max/supplicant.h) \
    $(wildcard include/config/rtl/11w/support.h) \
    $(wildcard include/config/rtl/11w/cli/support.h) \
    $(wildcard include/config/ieee80211w/cli.h) \
    $(wildcard include/config/ieee80211w/cli/debug.h) \
    $(wildcard include/config/ieee80211w/cmd.h) \
    $(wildcard include/config/ieee80211w/ap/debug.h) \
    $(wildcard include/config/rtl/11r/support.h) \
    $(wildcard include/config/ieee80211r.h) \
    $(wildcard include/config/ieee80211r/cli.h) \
    $(wildcard include/config/ieee80211r/cli/debug.h) \
    $(wildcard include/config/rtl/11v/support.h) \
    $(wildcard include/config/ieee80211v.h) \
    $(wildcard include/config/ieee80211v/cli.h) \
    $(wildcard include/config/rtk/multi/ap.h) \
    $(wildcard include/config/rtl/pmkcache/support.h) \
    $(wildcard include/config/pmkcache.h) \
    $(wildcard include/config/rtl/ac2g/256qam.h) \
    $(wildcard include/config/rtl/offload/driver.h) \
    $(wildcard include/config/mp/psd/support.h) \
    $(wildcard include/config/rtl/8198/nfbi/rtk/inband/ap.h) \
    $(wildcard include/config/usb/as/wlan1.h) \
    $(wildcard include/config/usb/power/bus.h) \
    $(wildcard include/config/rtl865x/eth/priv/skb.h) \
    $(wildcard include/config/rtl/eth/priv/skb.h) \
    $(wildcard include/config/rtk/vlan/support.h) \
    $(wildcard include/config/auto/pcie/phy/scan.h) \
    $(wildcard include/config/rtl/tpt/thread.h) \
    $(wildcard include/config/rtl/80211d/support.h) \
    $(wildcard include/config/rtl/dot11k/support.h) \
    $(wildcard include/config/rtk/smart/roaming.h) \
    $(wildcard include/config/sta/roaming/check.h) \
    $(wildcard include/config/rtl/monitor/sta/info.h) \
    $(wildcard include/config/rtk/multi/ap/r1/dfs.h) \
    $(wildcard include/config/usb/vendor/req/mutex.h) \
    $(wildcard include/config/vendor/req/retry.h) \
    $(wildcard include/config/usb/vendor/req/buffer/prealloc.h) \
    $(wildcard include/config/usb/vendor/req/buffer/dynamic/allocate.h) \
    $(wildcard include/config/use/vmalloc.h) \
    $(wildcard include/config/irq/level/xmit/lock.h) \
    $(wildcard include/config/usb/tx/aggregation.h) \
    $(wildcard include/config/tcp/ack/txagg.h) \
    $(wildcard include/config/tcp/ack/merge.h) \
    $(wildcard include/config/netdev/multi/tx/queue.h) \
    $(wildcard include/config/tx/recycle/early.h) \
    $(wildcard include/config/use/usb/buffer/alloc/rx.h) \
    $(wildcard include/config/prealloc/recv/skb.h) \
    $(wildcard include/config/usb/rx/aggregation.h) \
    $(wildcard include/config/error/detect.h) \
    $(wildcard include/config/usb/interrupt/in/pipe.h) \
    $(wildcard include/config/support/usb/int.h) \
    $(wildcard include/config/interrupt/based/txbcn.h) \
    $(wildcard include/config/1rcca/rf/power/saving.h) \
    $(wildcard include/config/power/save.h) \
    $(wildcard include/config/wakelock.h) \
    $(wildcard include/config/pm/wakelocks.h) \
    $(wildcard include/config/sdio/tx/aggregation.h) \
    $(wildcard include/config/sdio/tx/interrupt.h) \
    $(wildcard include/config/sdio/tx/in/interrupt.h) \
    $(wildcard include/config/sdio/reserve/massive/public/page.h) \
    $(wildcard include/config/sdio/tx/filter/by/pri.h) \
    $(wildcard include/config/rtl/asuswrt.h) \
    $(wildcard include/config/band/2g/on/wlan0.h) \
    $(wildcard include/config/wlan/stats/extention.h) \
    $(wildcard include/config/rf/kfree/support.h) \
    $(wildcard include/config/rtk/ssid/priority.h) \
    $(wildcard include/config/targetssid/weight/support.h) \
    $(wildcard include/config/ap/neighbor/info.h) \
    $(wildcard include/config/wlan/vdev/support.h) \
  include/generated/uapi/linux/version.h \
  include/linux/jiffies.h \
  include/linux/math64.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/types.h \
    $(wildcard include/config/64bit/phys/addr.h) \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/types.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/posix_types.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/sgidefs.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/asm-generic/posix_types.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/div64.h \
  include/asm-generic/div64.h \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/toolchain/msdk-4.8.5-mips-EL-3.10-u0.9.33-m32ut-180418/lib/gcc/mips-linux-uclibc/4.8.5/include/stdarg.h \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/linkage.h \
  include/linux/bitops.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/bitops.h \
    $(wildcard include/config/cpu/mipsr2.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/barrier.h \
    $(wildcard include/config/cpu/has/sync.h) \
    $(wildcard include/config/cpu/cavium/octeon.h) \
    $(wildcard include/config/sgi/ip28.h) \
    $(wildcard include/config/cpu/has/wb.h) \
    $(wildcard include/config/weak/ordering.h) \
    $(wildcard include/config/weak/reordering/beyond/llsc.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/addrspace.h \
    $(wildcard include/config/cpu/r8000.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/spaces.h \
    $(wildcard include/config/32bit.h) \
    $(wildcard include/config/kvm/guest.h) \
    $(wildcard include/config/dma/noncoherent.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/const.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/cpu-features.h \
    $(wildcard include/config/cpu/mipsr2/irq/vi.h) \
    $(wildcard include/config/cpu/mipsr2/irq/ei.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/cpu.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/cpu-info.h \
    $(wildcard include/config/mips/mt/smp.h) \
    $(wildcard include/config/mips/mt/smtc.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/cache.h \
    $(wildcard include/config/mips/l1/cache/shift.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/kmalloc.h \
    $(wildcard include/config/dma/coherent.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/bsp/cpu-feature-overrides.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/war.h \
    $(wildcard include/config/cpu/r4000/workarounds.h) \
    $(wildcard include/config/cpu/r4400/workarounds.h) \
    $(wildcard include/config/cpu/daddi/workarounds.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/bsp/war.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ffz.h \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/sched.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/arch_hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/le.h \
  include/asm-generic/bitops/ext2-atomic.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/typecheck.h \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/printk/func.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/string.h \
    $(wildcard include/config/cpu/r3000.h) \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/errno.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/errno.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/asm-generic/errno-base.h \
  include/uapi/linux/kernel.h \
    $(wildcard include/config/rlx.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/sysinfo.h \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/linux/seqlock.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/break.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/break.h \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/debug/bugverbose.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/thread_info.h \
    $(wildcard include/config/page/size/4kb.h) \
    $(wildcard include/config/page/size/8kb.h) \
    $(wildcard include/config/page/size/16kb.h) \
    $(wildcard include/config/page/size/32kb.h) \
    $(wildcard include/config/page/size/64kb.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/processor.h \
    $(wildcard include/config/cavium/octeon/cvmseg/size.h) \
    $(wildcard include/config/mips/mt/fpaff.h) \
    $(wildcard include/config/cpu/has/prefetch.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/cachectl.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mipsregs.h \
    $(wildcard include/config/cpu/vr41xx.h) \
    $(wildcard include/config/mips/huge/tlb/support.h) \
    $(wildcard include/config/cpu/micromips.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/hazards.h \
    $(wildcard include/config/cpu/mipsr1.h) \
    $(wildcard include/config/mips/alchemy.h) \
    $(wildcard include/config/cpu/bmips.h) \
    $(wildcard include/config/cpu/loongson2.h) \
    $(wildcard include/config/cpu/r10000.h) \
    $(wildcard include/config/cpu/r5500.h) \
    $(wildcard include/config/cpu/xlr.h) \
    $(wildcard include/config/cpu/sb1.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/prefetch.h \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/rtl/debug/counter.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/irqflags.h \
    $(wildcard include/config/irq/cpu.h) \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  include/linux/spinlock_types_up.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  include/linux/spinlock_up.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_up.h \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/atomic.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/cmpxchg.h \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/asm-generic/atomic64.h \
  include/uapi/linux/time.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/param.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/timex.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../../../typedef.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../../.././8192cd_common.h \
    $(wildcard include/config/rtl/kernel/user/share/structure.h) \
    $(wildcard include/config/rtl/comapi/cfgfile.h) \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../../.././core/core_cfg.h \
    $(wildcard include/config/luna/slave/phymem/offset.h) \
    $(wildcard include/config/rtl8686/dsp/mem/base.h) \
  drivers/net/wireless/rtl8192cd/typedef.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_hw_cfg.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/io.h \
  include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport.h) \
    $(wildcard include/config/generic/iomap.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/page.h \
    $(wildcard include/config/cpu/mips32.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
  include/linux/pfn.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/asm-generic/getorder.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/pgtable-bits.h \
    $(wildcard include/config/cpu/tx39xx.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/ioremap.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/mangle-port.h \
    $(wildcard include/config/swap/io/space.h) \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_type.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_fw_info.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_intf_phy_cmd.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_state_machine.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_usb_reg.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_sdio_reg.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_pcie_reg.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_bit2.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_reg2.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_typedef.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_reg_8812f.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_bit_8812f.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_rx_desc_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_tx_desc_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_tx_desc_buffer_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_tx_desc_ie_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_fw_offload_c2h_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_fw_offload_h2c_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_h2c_extra_info_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_original_c2h_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_original_h2c_ap.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_tx_desc_chip.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_rx_desc_chip.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_tx_desc_buffer_chip.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_tx_desc_ie_chip.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_88xx_cfg.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_common_88xx.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_pwr_seq_cmd.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/../halmac_gpio_cmd.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_init_88xx.h \

drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.o: $(deps_drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.o)

$(deps_drivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX/halmac_88xx/halmac_mimo_88xx.o):
