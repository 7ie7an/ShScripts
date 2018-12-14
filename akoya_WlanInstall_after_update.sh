#!/usr/bin/bash

echo Start Session for Medion Akoya
echo -----------Install------------
echo ------------------------------
echo Cleaning Realtek Driver Repo
echo ------------------------------

make clean

echo ------------------------------
echo Build Realtek Driver Repo
echo ------------------------------

make

echo ------------------------------
echo Install Realt#ek Driver 8723bu
echo ------------------------------

sudo make install

echo ------------------------------
echo Block wrong Driver Startup
echo ------------------------------

echo "blacklist r8169" | sudo tee /etc/modprobe.d/blacklist_r8169.conf

echo ------------------------------
echo Block wrong Driver now
echo ------------------------------

sudo modprobe -rf r8169

echo ------------------------------
echo Check 8723 Installtion
echo ------------------------------

modinfo 8723bu

echo ------------------------------
echo Aktivate 8723bu
echo ------------------------------

sudo modprobe -a 8723bu

echo ------------------------------
echo ----------Finished------------
echo ------------------------------
