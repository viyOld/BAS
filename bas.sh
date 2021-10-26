#!/bin/bash
echo "start BAS"
echo -n > /etc/apt/sources.list
echo "deb http://ftp.debian.org/debian bullseye main contrib non-free" | tee -a file*.conf
echo "deb-src http://ftp.debian.org/debian bullseye main contrib non-free" | tee -a file*.conf
echo "" | tee -a file*.conf
echo "deb http://ftp.debian.org/debian bullseye-updates main contrib non-free" | tee -a file*.conf
echo "deb-src http://ftp.debian.org/debian bullseye-updates main contrib non-free" | tee -a file*.conf
echo "" | tee -a file*.conf
echo "deb http://security.debian.org/ bullseye/updates main contrib non-free" | tee -a file*.conf
echo "deb-src http://security.debian.org/ bullseye/updates main contrib non-free" | tee -a file*.conf
echo "deb http://ftp.debian.org/debian bullseye-backports main contrib non-free" | tee -a file*.conf
echo "****************** finish BAS *******************"
