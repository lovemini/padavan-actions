# 修改配置
sed -i '/FRP/d' configs/templates/RM2100.config
sed -i '/WIREGUARD/d' configs/templates/RM2100.config
sed -i '/MENTOHUST/d' configs/templates/RM2100.config
sed -i '/TUNSAFE/d' configs/templates/RM2100.config

# 去掉优酸乳
sed -i 's#CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=y#CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n#' build_firmware_modify
sed -i 's#CONFIG_FIRMWARE_INCLUDE_XRAY=y#CONFIG_FIRMWARE_INCLUDE_XRAY=n#' build_firmware_modify
sed -i 's#CONFIG_FIRMWARE_INCLUDE_V2RAY=y#CONFIG_FIRMWARE_INCLUDE_V2RAY=n#' build_firmware_modify
sed -i 's#CONFIG_FIRMWARE_INCLUDE_TROJAN=y#CONFIG_FIRMWARE_INCLUDE_TROJAN=n#' build_firmware_modify
sed -i 's#CONFIG_FIRMWARE_INCLUDE_SSOBFS=y#CONFIG_FIRMWARE_INCLUDE_SSOBFS=n#' build_firmware_modify

# 修改默认ip段
sed -i 's#192.168.2#192.168.5#' user/shared/defaults.h

################################ Padavan-KVR ################################
# 此处填写对应频率的十六进制：1000Mhz=0x312 1100Mhz=0x362 1120Mhz=0x372 1200Mhz=0x3B2
# sed -i 's#0xc2#0x312#' linux-3.4.x/arch/mips/rt2880/init.c
# echo "CONFIG_FIRMWARE_CPU_900MHZ=y" >> configs/templates/RM2100.config
# sed -i 's#SMARTDNS=n#SMARTDNS=y#' build_firmware_modify
# sed -i 's#ALDRIVER=y#ALDRIVER=n#' build_firmware_modify
# sed -i 's#FRPC=n#FRPC=y#' build_firmware_modify



################################ padavan-4.4 ################################
sed -i 's#CONFIG_FIRMWARE_INCLUDE_OC=n#CONFIG_FIRMWARE_INCLUDE_OC=y#' build_firmware_modify
# 此处填写对应频率的十六进制：1000Mhz=0x312 1100Mhz=0x362 1120Mhz=0x372 1200Mhz=0x3B2
# sed -i 's#CONFIG_FIRMWARE_MT7621_OC="0x312"#CONFIG_FIRMWARE_MT7621_OC="0x362"#' build_firmware_modify
# 去掉不要的插件
sed -i 's#ADBYBY=y#ADBYBY=n#' build_firmware_modify
sed -i 's#ZEROTIER=y#ZEROTIER=n#' build_firmware_modify
sed -i 's#ALIDDNS=y#ALIDDNS=n#' build_firmware_modify
sed -i 's#DDNSTO=y#DDNSTO=n#' build_firmware_modify
sed -i 's#SQM=y#SQM=n#' build_firmware_modify
sed -i 's#WIREGUARD=y#WIREGUARD=n#' build_firmware_modify
# 增加需要的插件
sed -i 's#SMARTDNS=n#SMARTDNS=y#' build_firmware_modify
sed -i 's#FRPC=n#FRPC=y#' build_firmware_modify




