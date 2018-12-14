#!/usr/bin/bash 
sudo apt-get install git build-essential linux-headers-$(uname -r)
git clone https://github.com/lwfinger/rtl8723bu
sed -i 's/EXTRA_CFLAGS += -DCONFIG_CONCURRENT_MODE/#EXTRA_CFLAGS += -DCONFIG_CONCURRENT_MODE/g' ~/rtl8723bu/Makefile
cd rtl8723bu
make
sudo make install
sudo modprobe -v 8723bu
sudo modprobe -a 8723bu
modinfo 8723bu 
echo "blacklist rtl8192cu" | sudo tee /etc/modprobe.d/blacklist_rtl8192cu.conf
sudo modprobe -rf rtl8192cu
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/blacklist_rtl8xxxu.conf
sudo modprobe -rf rtl8xxxu
