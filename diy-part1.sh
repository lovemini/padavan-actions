# 修改配置
sed -i '/FRP/d' configs/templates/RM2100.config
sed -i '/WIREGUARD/d' configs/templates/RM2100.config
sed -i '/MENTOHUST/d' configs/templates/RM2100.config
sed -i '/TUNSAFE/d' configs/templates/RM2100.config

sed -i 's#0xc2#0x362#' linux-3.4.x/arch/mips/rt2880/init.c
echo "CONFIG_FIRMWARE_CPU_900MHZ=y" >> configs/templates/RM2100.config
echo "CONFIG_FIRMWARE_INCLUDE_WIREGUARD=y" >> configs/templates/RM2100.config

# sed -i 's#WIREGUARD=n#WIREGUARD=y#' configs/templates/RM2100.config

sed -i 's#SMARTDNS=n#SMARTDNS=y#' build_firmware_modify
sed -i 's#ADBYBY=n#ADBYBY=y#' build_firmware_modify
sed -i 's#FRPC=n#FRPC=y#' build_firmware_modify
sed -i 's#ZEROTIER=n#ZEROTIER=y#' build_firmware_modify
sed -i 's#DDNSTO=n#DDNSTO=y#' build_firmware_modify

sed -i 's#ALDRIVER=y#ALDRIVER=n#' build_firmware_modify

sed -i 's#192.168.2#192.168.5#' user/shared/defaults.h
# 超频
# sed -i 's#CONFIG_FIRMWARE_INCLUDE_OC=n#CONFIG_FIRMWARE_INCLUDE_OC=y#' build_firmware_modify
#此处填写对应频率的十六进制：1000Mhz=0x312 1100Mhz=0x362 1120Mhz=0x372 1200Mhz=0x3B2
# sed -i 's#CONFIG_FIRMWARE_MT7621_OC="0x312"#CONFIG_FIRMWARE_MT7621_OC="0x362"#' build_firmware_modify

