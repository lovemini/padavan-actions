# padavan-actions

使用GitHub actions 编译 padavan, 支持自定义源码和配置

## 使用方法

1. 点击 `Fork` 复制到自己的仓库

2. 修改自定义脚本`diy-part1.sh`，在编译前自动运行，用于修改源码

3. 依次点击 `Actions`→`Padavan手动云编译`→`Run workflow ▼`

4. 在弹出的窗口里填写"编译参数" 点击 `Run workflow` 开始云编译

> > 编译参数 < <  
> > │  
> > ├── 设置固件型号：--- 多个型号间用空格分开 建议每次编译最多不超过10个固件  
> > │  
> > ├── 设置源码地址：--- 理论上所有padavan源码编译通用 注意源码地址后加.git  



## 参考

https://github.com/P3TERX/Actions-OpenWrt

https://github.com/weln2020/manual-action-padavan