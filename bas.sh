#!/bin/bash
echo "------------------ start BAS ----------------------"
echo ""
echo -n > /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian bullseye main contrib non-free" | tee -a /etc/apt/sources.list
##echo "deb-src http://ftp.debian.org/debian bullseye main contrib non-free" | tee -a /etc/apt/sources.list
##echo "" | tee -a /etc/apt/sources.list
##echo "deb http://ftp.debian.org/debian bullseye-updates main contrib non-free" | tee -a /etc/apt/sources.list
##echo "deb-src http://ftp.debian.org/debian bullseye-updates main contrib non-free" | tee -a /etc/apt/sources.list
##echo "" | tee -a /etc/apt/sources.list
##echo "deb http://security.debian.org/ bullseye/updates main contrib non-free" | tee -a /etc/apt/sources.list
##echo "deb-src http://security.debian.org/ bullseye/updates main contrib non-free" | tee -a /etc/apt/sources.list
##echo "deb http://ftp.debian.org/debian bullseye-backports main contrib non-free" | tee -a /etc/apt/sources.list
echo "-----------> apt update"
apt update
echo "-----------> apt install -y mc"
apt install -y mc
echo "-----------> set timezone"
timedatectl set-timezone Europe/Kiev
systemctl restart systemd-timesyncd.service
#apt install ssh ntp mc -y
echo ""
echo "****************** finish BAS *******************"
