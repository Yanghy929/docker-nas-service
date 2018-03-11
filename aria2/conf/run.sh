#!/bin/sh

#替换window系统中配置文件的配置路径，如没有需要的可以注释掉。本人是将window系统的配置文件用onedrive进行共享公用，实现多台机器使用aria2下载，因此需要替换配置行。

downloaddir='dir=/root/downloads' #下载路径

sessiondir1='input-file=/root/downloads/aria2.session'  #session文件路径

sessiondir2='save-session=/root/downloads/aria2.session'  #session文件路径

certdir='rpc-certificate=/root/cert/certificate.pem'   #证书路径

keydir='rpc-private-key=/root/cert/certificate.key'  #私钥路径

allocation='file-allocation=trunc' 

dhtpath='dht-file-path=/root/aria2/dht.dat'  #dht文件


if [ -f "/root/aria2/tmp/aria2.conf" ]; then
  sed -e "/dir\=/ c${downloaddir}" -e "/input-file\=/ c${sessiondir1}" -e "/save-session\=/ c${sessiondir2}"  -e "/rpc-certificate\=/ c${certdir}" -e "/rpc-private-key\=/ c${keydir}" -e "/file-allocation\=/ c${allocation}" -e "$ a${dhtpath}" /root/aria2/tmp/aria2.conf > /root/aria2/aria2.conf 
fi	
	
if [ ! -f "/root/downloads/aria2.session" ]; then
  touch /root/downloads/aria2.session
fi

if [ ! -f "/root/aria2/dht.dat" ]; then
  touch /root/aria2/dht.dat
fi


/usr/bin/aria2c --conf-path=/root/aria2/aria2.conf
