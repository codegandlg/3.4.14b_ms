cmd_drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.o := msdk-linux-gcc -Wp,-MD,drivers/net/wireless/rtl8192cd/phydm/.phydm_pathdiv.o.d  -nostdinc -isystem /opt/workspace/server20191211/rtl819x_v3.4.14b/toolchain/msdk-4.8.5-mips-EL-3.10-u0.9.33-m32ut-180418/bin/../lib/gcc/mips-linux-uclibc/4.8.5/include -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include -Iarch/mips-ori/include/generated  -Iinclude -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi -Iarch/mips-ori/include/generated/uapi -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi -Iinclude/generated/uapi -include /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/linux/kconfig.h -D__KERNEL__ -DVMLINUX_LOAD_ADDRESS=0x80000000 -DDATAOFFSET=0 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -std=gnu89 -O2 -mno-check-zero-division -mabi=32 -G 0 -mno-abicalls -fno-pic -pipe -msoft-float -ffreestanding -EL -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__ -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__ -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__ -march=mips32r2 -Wa,-mips32r2 -Wa,--trap -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/bsp -I/opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -DDM_ODM_SUPPORT_TYPE=0x01 -Idrivers/net/wireless/rtl8192cd -Idrivers/net/wireless/rtl8192cd/phydm -Idrivers/net/wireless/rtl8192cd -Idrivers/net/wireless/rtl8192cd/WlanHAL/ -Idrivers/net/wireless/rtl8192cd/WlanHAL/Include -Idrivers/net/wireless/rtl8192cd/WlanHAL/HalHeader -Idrivers/net/wireless/rtl8192cd/core/WlanHAL -Idrivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX -Idrivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX -Idrivers/net/wireless/rtl8192cd/core/WlanHAL/RTL88XX -Idrivers/net/wireless/rtl8192cd/efuse_97f -Idrivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/RTL8197G -Idrivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/RTL8812F -Idrivers/net/wireless/rtl8192cd/WlanHAL/HalMac88XX -I/opt/workspace/server20191211/rtl819x_v3.4.14b/target -D'SVN_REV="exported"' -fsigned-char    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(phydm_pathdiv)"  -D"KBUILD_MODNAME=KBUILD_STR(rtl8192cd)" -c -o drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.o drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.c

source_drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.o := drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.c

deps_drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.o := \
    $(wildcard include/config/path/diversity.h) \
    $(wildcard include/config/path/div/v2.h) \
  drivers/net/wireless/rtl8192cd/phydm/mp_precomp.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm_precomp.h \
    $(wildcard include/config/rtl/triband/support.h) \
    $(wildcard include/config/usb/hci.h) \
    $(wildcard include/config/sfw/supported.h) \
  drivers/net/wireless/rtl8192cd/phydm/phydm_types.h \
    $(wildcard include/config/pci/hci.h) \
    $(wildcard include/config/sdio/hci.h) \
    $(wildcard include/config/gspi/hci.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/big/endian.h) \
  drivers/net/wireless/rtl8192cd/phydm/../typedef.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/halrf_features.h \
    $(wildcard include/config/halrf/powertracking.h) \
  drivers/net/wireless/rtl8192cd/phydm/../8192cd_cfg.h \
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
    $(wildcard include/config/rtl/multi/clone/support.h) \
    $(wildcard include/config/rtl/support/multi/profile.h) \
    $(wildcard include/config/wlan/hal/8812f.h) \
    $(wildcard include/config/rtl8196b/gw/mp.h) \
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
  drivers/net/wireless/rtl8192cd/phydm/../typedef.h \
  drivers/net/wireless/rtl8192cd/phydm/.././8192cd_common.h \
    $(wildcard include/config/rtl/kernel/user/share/structure.h) \
    $(wildcard include/config/rtl/comapi/cfgfile.h) \
  drivers/net/wireless/rtl8192cd/phydm/.././core/core_cfg.h \
    $(wildcard include/config/luna/slave/phymem/offset.h) \
    $(wildcard include/config/rtl8686/dsp/mem/base.h) \
  drivers/net/wireless/rtl8192cd/typedef.h \
  drivers/net/wireless/rtl8192cd/phydm/../odm_inc.h \
    $(wildcard include/config/wlan/hal/8195a.h) \
    $(wildcard include/config/wlan/hal/8710b.h) \
    $(wildcard include/config/wlan/hal/8195b.h) \
  drivers/net/wireless/rtl8192cd/phydm/../8192cd.h \
    $(wildcard include/config/rtl/alp.h) \
    $(wildcard include/config/rtl/wlan/status.h) \
    $(wildcard include/config/rtl/92e/support.h) \
    $(wildcard include/config/rtl/92f/support.h) \
    $(wildcard include/config/wlan/machal/api.h) \
    $(wildcard include/config/new/wlan/hal.h) \
    $(wildcard include/config/panic/printk.h) \
    $(wildcard include/config/statistics/info.h) \
    $(wildcard include/config/record/client/host.h) \
    $(wildcard include/config/rtl8190/throughput.h) \
    $(wildcard include/config/8881a/2layer.h) \
    $(wildcard include/config/8881a/hp.h) \
    $(wildcard include/config/rtl/wlan/dos/filter.h) \
    $(wildcard include/config/p2p/rtk/support.h) \
    $(wildcard include/config/xmitbuf/txagg/adv.h) \
    $(wildcard include/config/adaptive/soml.h) \
    $(wildcard include/config/rtl865x/wtdog.h) \
    $(wildcard include/config/rtl/wtdog.h) \
    $(wildcard include/config/rtl/mesh/single/iface.h) \
    $(wildcard include/config/fon.h) \
    $(wildcard include/config/rtk/bridge/vlan/support.h) \
    $(wildcard include/config/rtl/hw/vlan/support.h) \
    $(wildcard include/config/rtl/vlan/passthrough/support.h) \
    $(wildcard include/config/rtl/vlan/support.h) \
    $(wildcard include/config/rtl/bridge/vlan/support.h) \
  include/linux/interrupt.h \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/uapi/linux/irqnr.h \
  include/linux/hardirq.h \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/hardirq.h \
  include/asm-generic/hardirq.h \
  include/linux/irq_cpustat.h \
  include/linux/irq.h \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  include/linux/gfp.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/wait.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/current.h \
  include/asm-generic/current.h \
  include/uapi/linux/wait.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/generated/bounds.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/page.h \
    $(wildcard include/config/cpu/mips32.h) \
  include/linux/pfn.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/io.h \
  include/asm-generic/iomap.h \
    $(wildcard include/config/has/ioport.h) \
    $(wildcard include/config/generic/iomap.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/pgtable-bits.h \
    $(wildcard include/config/cpu/tx39xx.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/ioremap.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/mangle-port.h \
    $(wildcard include/config/swap/io/space.h) \
  include/asm-generic/memory_model.h \
  include/asm-generic/getorder.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/srcu.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
  include/linux/completion.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/rcutiny.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/topology.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/topology.h \
  include/asm-generic/topology.h \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/irq.h \
    $(wildcard include/config/i8259.h) \
    $(wildcard include/config/mips/mt/smtc/irqaff.h) \
    $(wildcard include/config/mips/mt/smtc/im/backstop.h) \
  include/linux/irqdomain.h \
    $(wildcard include/config/irq/domain.h) \
    $(wildcard include/config/of/irq.h) \
  include/linux/radix-tree.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mipsmtregs.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/bsp/irq.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/ptrace.h \
    $(wildcard include/config/cpu/has/smartmips.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/isadep.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/ptrace.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/irq_regs.h \
  include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/sparse/irq.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/hw_irq.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/rbtree.h \
  include/linux/timerqueue.h \
  include/linux/kref.h \
  include/linux/skbuff.h \
    $(wildcard include/config/rtl8190.h) \
    $(wildcard include/config/rtl8192se.h) \
    $(wildcard include/config/rtl/qos/patch.h) \
    $(wildcard include/config/rtk/voip/qos.h) \
    $(wildcard include/config/rtk/vlan/wan/tag/support.h) \
    $(wildcard include/config/rtl/hw/qos/support/wlan.h) \
    $(wildcard include/config/rtl/nic/queue.h) \
    $(wildcard include/config/rtl/8021q/vlan/support/multi/phy/vir/wan.h) \
    $(wildcard include/config/rtl/vlan/8021q.h) \
    $(wildcard include/config/rtl/8021q/vlan/support/src/tag.h) \
    $(wildcard include/config/rtl/hw/qos/support.h) \
    $(wildcard include/config/rtl/sw/queue/decision/priority.h) \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/rtl/isp/multi/wan/support.h) \
    $(wildcard include/config/rtl/ip/policy/routing/support.h) \
    $(wildcard include/config/rtl/hardware/multicast.h) \
    $(wildcard include/config/rtl865x/lanport/restriction.h) \
    $(wildcard include/config/rtl/qos/vlanid/support.h) \
    $(wildcard include/config/rtl/qos/8021p/support.h) \
    $(wildcard include/config/netfilter/xt/match/phyport.h) \
    $(wildcard include/config/rtl/fast/filter.h) \
    $(wildcard include/config/rtl/fast/bridge.h) \
    $(wildcard include/config/rtl/dscp/iptable/check.h) \
    $(wildcard include/config/rtl/vlanpri/iptable/check.h) \
    $(wildcard include/config/rtl/dns/trap.h) \
    $(wildcard include/config/rtl/http/redirect.h) \
    $(wildcard include/config/rtl/iptables/fast/path.h) \
    $(wildcard include/config/rtl/fast/pppoe.h) \
    $(wildcard include/config/rtl/sendfile/patch.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
  include/linux/kmemcheck.h \
    $(wildcard include/config/kmemcheck.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
  include/linux/auxvec.h \
  include/uapi/linux/auxvec.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
    $(wildcard include/config/uprobes.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mmu.h \
  include/linux/net.h \
  include/linux/random.h \
    $(wildcard include/config/arch/random.h) \
  include/uapi/linux/random.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/ioctl.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  include/linux/fcntl.h \
  include/uapi/linux/fcntl.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/fcntl.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/asm-generic/fcntl.h \
  include/uapi/linux/net.h \
  include/linux/socket.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/socket.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/socket.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/sockios.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/sockios.h \
  include/linux/uio.h \
  include/uapi/linux/uio.h \
  include/uapi/linux/socket.h \
  include/linux/textsearch.h \
  include/linux/err.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/slub/debug.h) \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kobject_ns.h \
  include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  include/net/checksum.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/uaccess.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/checksum.h \
  include/linux/in6.h \
  include/uapi/linux/in6.h \
  include/linux/dmaengine.h \
    $(wildcard include/config/async/tx/enable/channel/switch.h) \
    $(wildcard include/config/rapidio/dma/engine.h) \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
  include/linux/klist.h \
  include/linux/pinctrl/devinfo.h \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/ratelimit.h \
  include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/device.h \
  include/linux/pm_wakeup.h \
  include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
  include/linux/mm.h \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/range.h \
  include/linux/bit_spinlock.h \
  include/linux/shrinker.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/pgtable.h \
    $(wildcard include/config/cpu/supports/uncached/accelerated.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/pgtable-32.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/fixmap.h \
  include/asm-generic/pgtable-nopmd.h \
  include/asm-generic/pgtable-nopud.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
  include/linux/huge_mm.h \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  include/linux/vm_event_item.h \
    $(wildcard include/config/migration.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/scatterlist.h \
  include/asm-generic/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
  include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  include/linux/dma-attrs.h \
  include/linux/dma-direction.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/dma-mapping.h \
    $(wildcard include/config/sgi/ip27.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/dma-coherence.h \
  include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/mach-generic/dma-coherence.h \
  include/asm-generic/dma-mapping-common.h \
  include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  include/linux/netdev_features.h \
  include/net/flow_keys.h \
  include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/wlan.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/xps.h) \
    $(wildcard include/config/bql.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/libfcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/net/ns.h) \
    $(wildcard include/config/netprio/cgroup.h) \
    $(wildcard include/config/rtl/hardware/nat.h) \
    $(wildcard include/config/rtl/hw/napt.h) \
    $(wildcard include/config/net/dsa/tag/dsa.h) \
    $(wildcard include/config/net/dsa/tag/trailer.h) \
    $(wildcard include/config/netpoll/trap.h) \
  include/linux/pm_qos.h \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/miscdevice.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/major.h \
  include/linux/delay.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/delay.h \
  include/linux/rculist.h \
  include/linux/dynamic_queue_limits.h \
  include/linux/ethtool.h \
  include/linux/compat.h \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  include/uapi/linux/ethtool.h \
  include/linux/if_ether.h \
  include/uapi/linux/if_ether.h \
  include/net/net_namespace.h \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/ip/sctp.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/nf/defrag/ipv6.h) \
    $(wildcard include/config/wext/core.h) \
  include/linux/sysctl.h \
  include/uapi/linux/sysctl.h \
  include/net/netns/core.h \
  include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  include/net/snmp.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/snmp.h \
  include/linux/u64_stats_sync.h \
  include/net/netns/unix.h \
  include/net/netns/packet.h \
  include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
  include/net/inet_frag.h \
  include/linux/percpu_counter.h \
  include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/mroute/multiple/tables.h) \
  include/net/dst_ops.h \
  include/net/netns/sctp.h \
  include/net/netns/dccp.h \
  include/net/netns/netfilter.h \
  include/linux/proc_fs.h \
  include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
  include/linux/kdev_t.h \
  include/uapi/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist_bl.h \
  include/linux/list_bl.h \
  include/linux/path.h \
  include/linux/stat.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  include/linux/pid.h \
  include/linux/capability.h \
  include/uapi/linux/capability.h \
  include/linux/semaphore.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/fiemap.h \
  include/linux/migrate_mode.h \
  include/linux/percpu-rwsem.h \
  include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/uapi/linux/fs.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/limits.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/projid.h \
  include/uapi/linux/quota.h \
  include/linux/nfs_fs_i.h \
  include/linux/netfilter.h \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/nf/nat/needed.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/if.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/hdlc/ioctl.h \
  include/linux/in.h \
  include/uapi/linux/in.h \
  include/uapi/linux/netfilter.h \
  include/net/flow.h \
  include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
  include/net/netns/conntrack.h \
    $(wildcard include/config/nf/conntrack/proc/compat.h) \
    $(wildcard include/config/nf/conntrack/labels.h) \
  include/linux/list_nulls.h \
  include/linux/netfilter/nf_conntrack_tcp.h \
  include/uapi/linux/netfilter/nf_conntrack_tcp.h \
  include/net/netns/xfrm.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/xfrm.h \
  include/linux/seq_file_net.h \
  include/linux/seq_file.h \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/no/hz/full.h) \
  include/uapi/linux/sched.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/asm-generic/cputime_jiffies.h \
  include/linux/sem.h \
  include/uapi/linux/sem.h \
  include/linux/ipc.h \
  include/uapi/linux/ipc.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/ipcbuf.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/asm-generic/ipcbuf.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/sembuf.h \
  include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  include/uapi/linux/signal.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/signal.h \
    $(wildcard include/config/trad/signals.h) \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/signal.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/asm-generic/signal-defs.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/sigcontext.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/sigcontext.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/siginfo.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/uapi/asm-generic/siginfo.h \
  include/linux/proportions.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  include/uapi/linux/seccomp.h \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/resource.h \
  include/uapi/linux/resource.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/resource.h \
  include/asm-generic/resource.h \
  include/uapi/asm-generic/resource.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  include/linux/key.h \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/nsproxy.h \
  include/net/dsa.h \
  include/net/netprio_cgroup.h \
  include/linux/cgroup.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/cgroupstats.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/taskstats.h \
  include/linux/prio_heap.h \
  include/linux/idr.h \
  include/linux/xattr.h \
  include/uapi/linux/xattr.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/neighbour.h \
  include/linux/netlink.h \
  include/net/scm.h \
    $(wildcard include/config/security/network.h) \
  include/linux/security.h \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/securityfs.h) \
    $(wildcard include/config/security/yama.h) \
  include/uapi/linux/netlink.h \
    $(wildcard include/config/rtk/openvpn/hw/crypto.h) \
    $(wildcard include/config/auto/dhcp/check.h) \
    $(wildcard include/config/realtek/crypto/api.h) \
    $(wildcard include/config/rtl/83xx/qos/support.h) \
  include/uapi/linux/netdevice.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/if_packet.h \
  include/linux/if_link.h \
  include/uapi/linux/if_link.h \
  include/../net/bridge/br_private.h \
    $(wildcard include/config/rtl/igmp/snooping.h) \
    $(wildcard include/config/bridge/igmpv3/snooping.h) \
    $(wildcard include/config/rtl/layered/driver/l2.h) \
    $(wildcard include/config/rtl865x/eth.h) \
    $(wildcard include/config/bridge/igmp/snooping.h) \
    $(wildcard include/config/rtk/guest/zone.h) \
    $(wildcard include/config/bridge/vlan/filtering.h) \
    $(wildcard include/config/rt/multiple/br/support.h) \
    $(wildcard include/config/atm/lane.h) \
    $(wildcard include/config/rtl/igmp/proxy/multiwan.h) \
    $(wildcard include/config/rtl/multicast/port/mapping.h) \
  include/linux/if_bridge.h \
  include/uapi/linux/if_bridge.h \
  include/linux/netpoll.h \
  include/net/route.h \
  include/net/dst.h \
  include/linux/rtnetlink.h \
  include/uapi/linux/rtnetlink.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/if_addr.h \
  include/net/neighbour.h \
  include/net/rtnetlink.h \
  include/net/netlink.h \
  include/net/inetpeer.h \
  include/net/ipv6.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
  include/linux/ipv6.h \
    $(wildcard include/config/ipv6/privacy.h) \
    $(wildcard include/config/ipv6/router/pref.h) \
    $(wildcard include/config/ipv6/route/info.h) \
    $(wildcard include/config/ipv6/optimistic/dad.h) \
    $(wildcard include/config/ipv6/mip6.h) \
    $(wildcard include/config/ipv6/subtrees.h) \
  include/uapi/linux/ipv6.h \
  include/linux/icmpv6.h \
  include/uapi/linux/icmpv6.h \
  include/linux/tcp.h \
    $(wildcard include/config/tcp/md5sig.h) \
  include/net/sock.h \
    $(wildcard include/config/net.h) \
  include/linux/uaccess.h \
  include/linux/memcontrol.h \
    $(wildcard include/config/memcg/swap.h) \
    $(wildcard include/config/inet.h) \
  include/linux/jump_label.h \
  include/linux/res_counter.h \
  include/linux/static_key.h \
  include/linux/aio.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/aio_abi.h \
  include/linux/filter.h \
    $(wildcard include/config/bpf/jit.h) \
  include/uapi/linux/filter.h \
  include/linux/rculist_nulls.h \
  include/linux/poll.h \
  include/uapi/linux/poll.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/uapi/asm/poll.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/asm-generic/poll.h \
  include/net/inet_connection_sock.h \
  include/net/inet_sock.h \
  include/linux/jhash.h \
  include/linux/unaligned/packed_struct.h \
  include/net/request_sock.h \
  include/net/netns/hash.h \
  include/net/inet_timewait_sock.h \
  include/net/tcp_states.h \
  include/net/timewait_sock.h \
  include/uapi/linux/tcp.h \
  include/linux/udp.h \
  include/uapi/linux/udp.h \
  include/net/if_inet6.h \
  include/net/ndisc.h \
  include/linux/if_arp.h \
    $(wildcard include/config/firewire/net.h) \
  include/uapi/linux/if_arp.h \
  include/linux/hash.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/in_route.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/route.h \
  include/linux/ip.h \
  include/uapi/linux/ip.h \
  include/linux/if_vlan.h \
  include/linux/etherdevice.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/unaligned.h \
  include/linux/unaligned/le_struct.h \
  include/linux/unaligned/be_byteshift.h \
  include/linux/unaligned/generic.h \
  include/uapi/linux/if_vlan.h \
  include/net/rtl/rtl_types.h \
    $(wildcard include/config/rtl865x/nicdrv2.h) \
    $(wildcard include/config/rtl/dynamic/iram/mapping/for/wapi.h) \
    $(wildcard include/config/rtl/disable/eth/mips16.h) \
    $(wildcard include/config/rtl8196c/eth/iot.h) \
    $(wildcard include/config/rtl8196c/green/ethernet.h) \
    $(wildcard include/config/rtl/8196c/esd.h) \
    $(wildcard include/config/rtl/8198/esd.h) \
    $(wildcard include/config/rtl/8197d/dyn/thr.h) \
    $(wildcard include/config/rtl/819xdt.h) \
    $(wildcard include/config/rtl/log/debug.h) \
    $(wildcard include/config/rtl819x/spi/flash.h) \
    $(wildcard include/config/cpu/little/endian.h) \
    $(wildcard include/config/rtl/switch/new/descriptor.h) \
    $(wildcard include/config/rtl/ap/package.h) \
    $(wildcard include/config/rtl/check/switch/tx/hangup.h) \
    $(wildcard include/config/rtl/gso.h) \
    $(wildcard include/config/rtl/97f/hw/tx/csum.h) \
    $(wildcard include/config/rtl/hw/tx/csum.h) \
    $(wildcard include/config/rtl/eth/tx/sg.h) \
    $(wildcard include/config/rtl/tso.h) \
    $(wildcard include/config/rtl/8367r/support.h) \
    $(wildcard include/config/rtl/adaptable/tso.h) \
    $(wildcard include/config/rtl/8211f/support.h) \
  include/linux/module.h \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  include/linux/kmod.h \
  include/linux/elf.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/elf.h \
    $(wildcard include/config/mips32/n32.h) \
    $(wildcard include/config/mips32/o32.h) \
    $(wildcard include/config/mips32/compat.h) \
  include/uapi/linux/elf.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/elf-em.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/tracepoint.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/module.h \
    $(wildcard include/config/cpu/mips32/r1.h) \
    $(wildcard include/config/cpu/mips32/r2.h) \
    $(wildcard include/config/cpu/mips64/r1.h) \
    $(wildcard include/config/cpu/mips64/r2.h) \
    $(wildcard include/config/cpu/r4300.h) \
    $(wildcard include/config/cpu/r4x00.h) \
    $(wildcard include/config/cpu/tx49xx.h) \
    $(wildcard include/config/cpu/r5000.h) \
    $(wildcard include/config/cpu/r5432.h) \
    $(wildcard include/config/cpu/r6000.h) \
    $(wildcard include/config/cpu/nevada.h) \
    $(wildcard include/config/cpu/rm7000.h) \
    $(wildcard include/config/cpu/loongson1.h) \
    $(wildcard include/config/cpu/xlp.h) \
  drivers/net/wireless/rtl8192cd/phydm/.././8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/phydm/.././core/core.h \
  drivers/net/wireless/rtl8192cd/./8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/phydm/.././wifi.h \
    $(wildcard include/config/auth/open.h) \
    $(wildcard include/config/auth/wep/shared.h) \
    $(wildcard include/config/auth/wep/auto.h) \
  drivers/net/wireless/rtl8192cd/phydm/../././core/core_wifi.h \
  drivers/net/wireless/rtl8192cd/phydm/.././ieee802_mib.h \
  drivers/net/wireless/rtl8192cd/phydm/../././core/core_ieee802_mib.h \
  drivers/net/wireless/rtl8192cd/phydm/../././8192cd_common.h \
  drivers/net/wireless/rtl8192cd/phydm/.././Wlan_TypeDef.h \
    $(wildcard include/config/operation/.h) \
    $(wildcard include/config/operation.h) \
  drivers/net/wireless/rtl8192cd/phydm/.././Wlan_QoSType.h \
  drivers/net/wireless/rtl8192cd/phydm/.././8192cd_security.h \
  drivers/net/wireless/rtl8192cd/phydm/../././8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/phydm/../././core/core_security.h \
  drivers/net/wireless/rtl8192cd/phydm/.././8192cd_br_ext.h \
  drivers/net/wireless/rtl8192cd/phydm/.././8192cd_hw.h \
    $(wildcard include/config/.h) \
  drivers/net/wireless/rtl8192cd/phydm/../././8192c_reg.h \
    $(wildcard include/config/shift.h) \
    $(wildcard include/config/mask.h) \
  drivers/net/wireless/rtl8192cd/phydm/../././8812_reg.h \
    $(wildcard include/config/pmpd/ant/a.h) \
    $(wildcard include/config/ram64x16.h) \
    $(wildcard include/config/ant/a.h) \
    $(wildcard include/config/ant/b.h) \
    $(wildcard include/config/pmpd/ant/b.h) \
    $(wildcard include/config/usedk.h) \
    $(wildcard include/config/no/usedk.h) \
  drivers/net/wireless/rtl8192cd/phydm/../././WlanHAL/HalMac88XX/halmac_reg2.h \
  drivers/net/wireless/rtl8192cd/phydm/../././WlanHAL/HalMac88XX/halmac_hw_cfg.h \
  drivers/net/wireless/rtl8192cd/phydm/../././WlanHAL/HalMac88XX/halmac_bit2.h \
  drivers/net/wireless/rtl8192cd/phydm/../././wifi.h \
  drivers/net/wireless/rtl8192cd/phydm/../././8192cd_phyreg.h \
  drivers/net/wireless/rtl8192cd/phydm/.././cmn_info_file/rtw_sta_info.h \
  drivers/net/wireless/rtl8192cd/phydm/../././core/core_hw.h \
    $(wildcard include/config/wlan/hal/8822b.h) \
    $(wildcard include/config/wlan/hal/8821c.h) \
    $(wildcard include/config/wlan/hal/8192f.h) \
    $(wildcard include/config/wlan/hal/8822c.h) \
  drivers/net/wireless/rtl8192cd/./8192c_reg.h \
  drivers/net/wireless/rtl8192cd/./8812_reg.h \
  drivers/net/wireless/rtl8192cd/./WlanHAL/HalMac88XX/halmac_reg2.h \
  drivers/net/wireless/rtl8192cd/./WlanHAL/HalMac88XX/halmac_bit2.h \
  drivers/net/wireless/rtl8192cd/./wifi.h \
  drivers/net/wireless/rtl8192cd/./8192cd_phyreg.h \
  drivers/net/wireless/rtl8192cd/cmn_info_file/rtw_sta_info.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_types.h \
  drivers/net/wireless/rtl8192cd/phydm/.././odm_inc.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm.h \
    $(wildcard include/config/phydm/antenna/diversity.h) \
    $(wildcard include/config/smart/antenna.h) \
    $(wildcard include/config/ant/detection.h) \
    $(wildcard include/config/dynamic/tx/twr.h) \
    $(wildcard include/config/psd/tool.h) \
    $(wildcard include/config/directional/bf.h) \
    $(wildcard include/config/bb/rf.h) \
    $(wildcard include/config/bt/coexist.h) \
    $(wildcard include/config/mcc/dm.h) \
    $(wildcard include/config/phydm/dfs/master.h) \
    $(wildcard include/config/hl/smart/antenna.h) \
    $(wildcard include/config/bb/phy/reg.h) \
    $(wildcard include/config/bb/agc/tab.h) \
    $(wildcard include/config/bb/agc/tab/2g.h) \
    $(wildcard include/config/bb/agc/tab/5g.h) \
    $(wildcard include/config/bb/phy/reg/pg.h) \
    $(wildcard include/config/bb/phy/reg/mp.h) \
    $(wildcard include/config/bb/agc/tab/diff.h) \
    $(wildcard include/config/bb/rf/cal/init.h) \
    $(wildcard include/config/rf/radio.h) \
    $(wildcard include/config/rf/txpwr/lmt.h) \
    $(wildcard include/config/rf/syn/radio.h) \
    $(wildcard include/config/fw/nic.h) \
    $(wildcard include/config/fw/nic/2.h) \
    $(wildcard include/config/fw/ap.h) \
    $(wildcard include/config/fw/ap/2.h) \
    $(wildcard include/config/fw/mp.h) \
    $(wildcard include/config/fw/wowlan.h) \
    $(wildcard include/config/fw/wowlan/2.h) \
    $(wildcard include/config/fw/ap/wowlan.h) \
    $(wildcard include/config/fw/bt.h) \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_pre_define.h \
    $(wildcard include/config/concurrent/mode.h) \
    $(wildcard include/config/mu/jaguar/2.h) \
    $(wildcard include/config/mu/jaguar/3.h) \
    $(wildcard include/config/rfe/by/hw/info.h) \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_features.h \
    $(wildcard include/config/run/in/drv.h) \
    $(wildcard include/config/powersaving.h) \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_features_ap.h \
    $(wildcard include/config/ra/fw/dbg/code.h) \
    $(wildcard include/config/8912f/spur/calibration.h) \
    $(wildcard include/config/8822b/spur/calibration.h) \
    $(wildcard include/config/ra/dynamic/rty/limit.h) \
    $(wildcard include/config/ra/dynamic/rate/id.h) \
    $(wildcard include/config/bb/txbf/api.h) \
    $(wildcard include/config/phydm/debug/function.h) \
    $(wildcard include/config/antenna/diversity.h) \
    $(wildcard include/config/s0s1/sw/antenna/diversity.h) \
    $(wildcard include/config/no/2g/diversity/8197f.h) \
    $(wildcard include/config/no/2g/diversity.h) \
    $(wildcard include/config/2g/cgcs/rx/diversity/8197f.h) \
    $(wildcard include/config/2g/cgcs/rx/diversity.h) \
    $(wildcard include/config/2g/cg/trx/diversity/8197f.h) \
    $(wildcard include/config/2g/cg/trx/diversity.h) \
    $(wildcard include/config/no/2g/diversity/8197g.h) \
    $(wildcard include/config/2g/cgcs/rx/diversity/8197g.h) \
    $(wildcard include/config/2g/cg/trx/diversity/8197g.h) \
    $(wildcard include/config/2g5g/cg/trx/diversity/8881a.h) \
    $(wildcard include/config/2g/cg/smart/ant/diversity.h) \
    $(wildcard include/config/no/5g/diversity/8881a.h) \
    $(wildcard include/config/no/5g/diversity.h) \
    $(wildcard include/config/5g/cgcs/rx/diversity/8881a.h) \
    $(wildcard include/config/5g/cgcs/rx/diversity.h) \
    $(wildcard include/config/5g/cg/trx/diversity/8881a.h) \
    $(wildcard include/config/5g/cg/trx/diversity.h) \
    $(wildcard include/config/2g5g/cg/trx/diversity.h) \
    $(wildcard include/config/5g/cg/smart/ant/diversity.h) \
    $(wildcard include/config/not/support/antdiv.h) \
    $(wildcard include/config/2g/support/antdiv.h) \
    $(wildcard include/config/5g/support/antdiv.h) \
    $(wildcard include/config/2g5g/support/antdiv.h) \
    $(wildcard include/config/cumitek/smart/antenna.h) \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_dig.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_soml.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_rainfo.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_dynamictxpower.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_cfotracking.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_adaptivity.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_dfs.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_ccx.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/txbf/phydm_hal_txbf_api.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_adc_sampling.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_cck_pd.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_rssi_monitor.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_math_lib.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_noisemonitor.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_api.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_lna_sat.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_pmac_tx_setting.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_mp.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_direct_bf.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/phydm_regtable.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/halrf/halrf_iqk.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/halrf/halrf_dpk.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/halrf/halrf.h \
    $(wildcard include/config/2g/band/shift.h) \
  drivers/net/wireless/rtl8192cd/phydm/halrf/halrf_psd.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8197g/halrf_rfk_init_8197g.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8812f/halrf_rfk_init_8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/halrf/halrf_powertracking.h \
  drivers/net/wireless/rtl8192cd/phydm/../phydm/halrf/halphyrf_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/halrf_powertracking_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/halrf_kfree.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8812f/halrf_iqk_8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8812f/halrf_dpk_8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8812f/halrf_tssi_8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8197g/halrf_iqk_8197g.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8197g/halrf_dpk_8197g.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8197g/halrf_tssi_8197g.h \
  drivers/net/wireless/rtl8192cd/phydm/.././EdcaTurboCheck.h \
  drivers/net/wireless/rtl8192cd/phydm/.././8192cd_psk.h \
    $(wildcard include/config/rtl8186/kb/n.h) \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_api.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_2_platform.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/../../8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_hw_cfg.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_type.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_fw_info.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_intf_phy_cmd.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_state_machine.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_usb_reg.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_sdio_reg.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_pcie_reg.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_bit2.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_reg2.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_typedef.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_reg_8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_bit_8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_rx_desc_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_tx_desc_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_tx_desc_buffer_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_tx_desc_ie_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_fw_offload_c2h_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_fw_offload_h2c_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_h2c_extra_info_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_original_c2h_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_original_h2c_ap.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_tx_desc_chip.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_rx_desc_chip.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_tx_desc_buffer_chip.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/HalMac88XX/halmac_tx_desc_ie_chip.h \
  drivers/net/wireless/rtl8192cd/phydm/../WlanHAL/Output/HalLib.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/Include/PlatformDef.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/Include/StatusCode.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/Include/GeneralDef.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalCfg.h \
    $(wildcard include/config/luna/slave/phymem/offset/hal.h) \
  drivers/net/wireless/rtl8192cd/Wlan_TypeDef.h \
  drivers/net/wireless/rtl8192cd/Wlan_QoSType.h \
  drivers/net/wireless/rtl8192cd/8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/8192cd.h \
  drivers/net/wireless/rtl8192cd/8192cd_util.h \
    $(wildcard include/config/rtk/sw/lock/api.h) \
  include/linux/pci.h \
    $(wildcard include/config/pci/iov.h) \
    $(wildcard include/config/pcieaspm.h) \
    $(wildcard include/config/pci/msi.h) \
    $(wildcard include/config/pci/ats.h) \
    $(wildcard include/config/pcieportbus.h) \
    $(wildcard include/config/pcieaer.h) \
    $(wildcard include/config/pcie/ecrc.h) \
    $(wildcard include/config/ht/irq.h) \
    $(wildcard include/config/pci/domains.h) \
    $(wildcard include/config/pci/quirks.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/hotplug/pci.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/eeh.h) \
  include/linux/mod_devicetable.h \
  include/linux/uuid.h \
  include/uapi/linux/uuid.h \
  include/linux/io.h \
  include/uapi/linux/pci.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/include/uapi/linux/pci_regs.h \
  include/linux/pci_ids.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/pci.h \
  include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/proc/devicetree.h) \
  include/asm-generic/pci-bridge.h \
  include/asm-generic/pci-dma-compat.h \
  include/linux/circ_buf.h \
  /opt/workspace/server20191211/rtl819x_v3.4.14b/linux-3.10/arch/mips-ori/include/asm/cacheflush.h \
  drivers/net/wireless/rtl8192cd/./8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/./8192cd.h \
  drivers/net/wireless/rtl8192cd/./wifi.h \
  drivers/net/wireless/rtl8192cd/./8192cd_hw.h \
  drivers/net/wireless/rtl8192cd/./core/8192cd_core_util.h \
  drivers/net/wireless/rtl8192cd/./core/../8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/./core/../8192cd.h \
  drivers/net/wireless/rtl8192cd/./core/../wifi.h \
  drivers/net/wireless/rtl8192cd/./core/../8192cd_hw.h \
  drivers/net/wireless/rtl8192cd/8192cd_headers.h \
    $(wildcard include/config/puma/udma/support.h) \
    $(wildcard include/config/wifi/led/shared.h) \
    $(wildcard include/config/rtl/kernel/mips16/wlan.h) \
    $(wildcard include/config/rf/dpk/setting/support.h) \
    $(wildcard include/config/rtl/mesh/crossband.h) \
  include/linux/wireless.h \
  include/uapi/linux/wireless.h \
  drivers/net/wireless/rtl8192cd/./8192cd_tx.h \
  drivers/net/wireless/rtl8192cd/././8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/././8192cd.h \
  drivers/net/wireless/rtl8192cd/././8192cd_util.h \
  drivers/net/wireless/rtl8192cd/././core/8192cd_core_tx.h \
    $(wildcard include/config/cpu/rlx4181.h) \
  drivers/net/wireless/rtl8192cd/././core/../8192cd_cfg.h \
  drivers/net/wireless/rtl8192cd/././core/../8192cd.h \
  drivers/net/wireless/rtl8192cd/././core/../8192cd_util.h \
  drivers/net/wireless/rtl8192cd/././core/./8192cd_core_util.h \
  drivers/net/wireless/rtl8192cd/./WlanHAL/RTL88XX/RTL8197G/RTL8197GE/Hal8197GEDef.h \
  drivers/net/wireless/rtl8192cd/./WlanHAL/RTL88XX/RTL8812F/RTL8812FE/Hal8812FEDef.h \
  drivers/net/wireless/rtl8192cd/Beamforming.h \
  drivers/net/wireless/rtl8192cd/./8192cd_11v.h \
  drivers/net/wireless/rtl8192cd/./core/core_header.h \
  drivers/net/wireless/rtl8192cd/./8192cd_tx.h \
  drivers/net/wireless/rtl8192cd/./WlanHAL/RTL88XX/RTL8812F/RTL8812FE/Hal8812FEDef.h \
  drivers/net/wireless/rtl8192cd/Beamforming.h \
  drivers/net/wireless/rtl8192cd/./8192cd_11v.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm_precomp.h \
  drivers/net/wireless/rtl8192cd/8812_vht_gen.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalCommon.h \
  drivers/net/wireless/rtl8192cd/core/WlanHAL/HalMacFunc.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalTxDutySetting.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalMacAPI.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/./HalMac88XX/halmac_2_platform.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXDef.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXDesc.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXTxDesc.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXRxDesc.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXFirmware.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXDebug.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXPhyCfg.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/RTL88XX/Hal88XXDM.h \
  drivers/net/wireless/rtl8192cd/WlanHAL/HalDef.h \
    $(wildcard include/config/para/.h) \
    $(wildcard include/config/para.h) \
  drivers/net/wireless/rtl8192cd/phydm/../8192cd_util.h \
  drivers/net/wireless/rtl8192cd/phydm/../8192cd_hw.h \
  drivers/net/wireless/rtl8192cd/phydm/../8192cd_headers.h \
  drivers/net/wireless/rtl8192cd/phydm/../8192cd_debug.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm_hwconfig.h \
    $(wildcard include/config/mp.h) \
    $(wildcard include/config/tc.h) \
  drivers/net/wireless/rtl8192cd/phydm/phydm_phystatus.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm_debug.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm_regdefine11ac.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm_regdefine11n.h \
    $(wildcard include/config/anta/11n.h) \
  drivers/net/wireless/rtl8192cd/phydm/phydm_interface.h \
  drivers/net/wireless/rtl8192cd/phydm/phydm_reg.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/halrf_debug.h \
  drivers/net/wireless/rtl8192cd/phydm/rtl8812f/halhwimg8812f_bb.h \
  drivers/net/wireless/rtl8192cd/phydm/rtl8812f/phydm_regconfig8812f.h \
    $(wildcard include/config/h/8812f.h) \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8812f/halrf_8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8812f/halhwimg8812f_rf.h \
    $(wildcard include/config/xxx/drv/dis.h) \
    $(wildcard include/config/8812f/drv/dis.h) \
    $(wildcard include/config/8812f/type0/drv/dis.h) \
    $(wildcard include/config/8812f/type1/drv/dis.h) \
    $(wildcard include/config/8812f/type2/drv/dis.h) \
    $(wildcard include/config/8812f/type3/drv/dis.h) \
    $(wildcard include/config/8812f/type4/drv/dis.h) \
    $(wildcard include/config/8812f.h) \
    $(wildcard include/config/8812f/type0.h) \
    $(wildcard include/config/8812f/type1.h) \
    $(wildcard include/config/8812f/type2.h) \
    $(wildcard include/config/8812f/type3.h) \
    $(wildcard include/config/8812f/type4.h) \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8812f/version_rtl8812f_rf.h \
  drivers/net/wireless/rtl8192cd/phydm/rtl8812f/phydm_hal_api8812f.h \
    $(wildcard include/config/version/8812f.h) \
  drivers/net/wireless/rtl8192cd/phydm/rtl8812f/version_rtl8812f.h \
  drivers/net/wireless/rtl8192cd/phydm/rtl8197g/halhwimg8197g_bb.h \
  drivers/net/wireless/rtl8192cd/phydm/rtl8197g/halhwimg8197g_mac.h \
  drivers/net/wireless/rtl8192cd/phydm/rtl8197g/phydm_regconfig8197g.h \
    $(wildcard include/config/h/8197g.h) \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8197g/halrf_8197g.h \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8197g/halhwimg8197g_rf.h \
    $(wildcard include/config/8197g/drv/dis.h) \
    $(wildcard include/config/8197g.h) \
  drivers/net/wireless/rtl8192cd/phydm/halrf/rtl8197g/version_rtl8197g_rf.h \
  drivers/net/wireless/rtl8192cd/phydm/rtl8197g/phydm_hal_api8197g.h \
    $(wildcard include/config/version/8197g.h) \
    $(wildcard include/config/txagc/debug/8197g.h) \
  drivers/net/wireless/rtl8192cd/phydm/rtl8197g/version_rtl8197g.h \

drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.o: $(deps_drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.o)

$(deps_drivers/net/wireless/rtl8192cd/phydm/phydm_pathdiv.o):
