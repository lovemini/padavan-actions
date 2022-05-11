# 修改配置
sed -i '/FRP/d' configs/templates/RM2100.config
sed -i '/WIREGUARD/d' configs/templates/RM2100.config
sed -i '/MENTOHUST/d' configs/templates/RM2100.config

sed -i 's#SMARTDNS=n#SMARTDNS=y#' build_firmware_modify
sed -i 's#FRPC=n#FRPC=y#' build_firmware_modify
# sed -i 's#FRPS=n#FRPS=y#' build_firmware_modify
sed -i 's#ALIDDNS=y#ALIDDNS=n#' build_firmware_modify
sed -i 's#SQM=y#SQM=n#' build_firmware_modify

sed -i 's#192.168.2#192.168.5#' user/shared/defaults.h
# 超频
sed -i 's#CONFIG_FIRMWARE_INCLUDE_OC=n#CONFIG_FIRMWARE_INCLUDE_OC=y#' build_firmware_modify
#此处填写对应频率的十六进制：1000Mhz=0x312 1100Mhz=0x362 1120Mhz=0x372 1200Mhz=0x3B2
# sed -i 's#CONFIG_FIRMWARE_MT7621_OC="0x312"#CONFIG_FIRMWARE_MT7621_OC="0x372"#' build_firmware_modify

