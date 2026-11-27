#!/bin/sh
# 2026-11-27 tynubqy
# Debian 13 install apt-cacher

sudo echo 2>/dev/null || { echo "install sudo"; exit 1 }
sudo apt update;apt upgrade -y
sudo apt install -y apt-cacher
sudo mv /etc/apt-cacher/apt-cacher.conf /etc/apt-cacher/apt-cacher.conf.ori

sudo cat <<EOF >/etc/apt-cacher/apt-cacher.conf
group = www-data
user = www-data
distinct_namespaces = 1
allowed_hosts = *
EOF
