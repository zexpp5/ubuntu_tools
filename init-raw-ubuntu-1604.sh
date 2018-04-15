#!/bin/bash
if [ ! -d "~/.ssh" ]; then
      mkdir ~/.ssh
fi
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDBb0Ts77V22IcFaIMvO7ZCybABHegezX73i6E8U59QstrwOOi/3gQ0kFTjF7SW2NAXOPdX0bm9ECHSX7BBLEVUbJOyfX7ry2EQqFksZwLx3pAhGr7EvUEcEJjodYc3d5JsTyNgoVLKA+dlOnIaACULqsk52iZXxvu/6CNRJSdmv/XqImyAxtpZuHEt1G6zylgdK0calH8xqq7ikmsGco+cr+aLSl9zvnK3+y66g7kj42NH+P4p0+KiugKIAPzsxyqzn1NjglT48EkOy5K3Hs59MlcJUXADU3M4UBYD+wHp/XKvjAkCXzCMQ3cv0GJCjiLneCM8i6UmC97Kxgwit8LZ
lance7in@Lance7ins-iMac.local" > ~/.ssh/authorized_keys
echo "\
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
" > /etc/apt/sources.list
apt-get update && apt-get upgrade
#install core libs
apt-get install -y  make \
    build-essential \
    software-properties-common \
    linux-headers-$(uname -r) \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual \
    libssl-dev \
    libffi-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    unixodbc \
    unixodbc-dev \
    libaio1 \
    freetds-bin \
    freetds-dev \
    tdsodbc \
    alien \
    apt-transport-https \
    ca-certificates \
    git \
    virtualbox \
    virtualbox-ext-pack \
    virtualbox-guest-additions-iso \
    virtualbox-guest-dkms \
    virtualbox-guest-source \
    virtualbox-guest-utils \
    virtualbox-guest-x11 \
    automake \
    autoconf \
    pkg-config \
    libgtk-3-dev \
    libtiff5-dev \
    libjpeg8-dev \
    zlib1g-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    tcl8.6-dev \
    tk8.6-dev \
    python-tk \
    python-dev \
    vim \
    curl \
    members \
    exfat-utils \
    exfat-fuse \
    unrar \
    mcelog \
    net-tools

