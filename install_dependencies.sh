#!/bin/sh

echo "Installing Autoconf 2.13..."
git clone https://repo.palemoon.org/Basilisk-Dev/autoconf213-slackbuild ~/autoconf213-slackbuild
cd ~/autoconf213-slackbuild
wget https://ftp.gnu.org/gnu/autoconf/autoconf-2.13.tar.gz
wget http://www.linuxfromscratch.org/patches/blfs/svn/autoconf-2.13-consolidated_fixes-1.patch
sudo ./autoconf213.SlackBuild
sudo upgradepkg --install-new /tmp/SBo/autoconf213-2.13-noarch-1.txz

echo "Installing GCC 9..."
mkdir /gcc9
cd /gcc9
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-9.2.0-x86_64-1_slack14.2.txz
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-brig-9.2.0-x86_64-1_slack14.2.txz
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-g++-9.2.0-x86_64-1_slack14.2.txz
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-gdc-9.2.0-x86_64-1_slack14.2.txz
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-gfortran-9.2.0-x86_64-1_slack14.2.txz
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-gnat-9.2.0-x86_64-1_slack14.2.txz
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-go-9.2.0-x86_64-1_slack14.2.txz
wget http://ftp.slackware.com/pub/slackware/unsupported/gcc-9.2.0-for-Slackware-14.2/x86_64/gcc-objc-9.2.0-x86_64-1_slack14.2.txz
upgradepkg --installnew ./*.txz
cd /
rm -rf /gcc9

mkdir /usr/lib64/bdf-plugins
ln -s /usr/libexec/gcc/x86_64-slackware-linux/9.2.0/liblto_plugin.so* /usr/lib64/bdf-plugins/