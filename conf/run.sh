#!/bin/sh

#替换window系统中配置文件的相关路径分隔符，如没有需要的可以注释掉。本人是将window系统的配置文件用onedrive进行共享公用，实现多台机器使用aria2下载，因此需要替换。

sed -e 's#[a-zA-Z]\:\\#\/#g' -e 's#\\#\/#g' /root/aria2/tmp/aria2.conf > /root/aria2/aria2.conf

/usr/bin/aria2c --conf-path /root/aria2/aria2.conf