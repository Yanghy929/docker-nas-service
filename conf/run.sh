#!/bin/sh

#替换window系统中配置文件的配置路径，如没有需要的可以注释掉。本人是将window系统的配置文件用onedrive进行共享公用，实现多台机器使用aria2下载，因此需要替换。

downloaddir='dir=/root/downloads'

sessiondir1='input-file=/root/downloads/aria2.session'

sessiondir2='save-session=/root/downloads/aria2.session'

certdir='rpc-certificate=/root/cert/certificate.pem'

keydir='rpc-private-key=/root/cert/certificate.key'

sed -e "/dir=/ c${downloaddir}" -e "/input-file=/ c${sessiondir1}" -e "/save-session=/ c${sessiondir2}" -e "/rpc-certificate=/ c${certdir}" -e "/rpc-private-key=/ c${keydir}"  /root/aria2/tmp/aria2.conf > /root/aria2/aria2.conf

/usr/bin/aria2c --conf-path /root/aria2/aria2.conf