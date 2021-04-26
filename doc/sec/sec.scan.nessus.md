Nessus使用方法
https://www.yuque.com/shad0wpf/software/nessus

下载

https://www.tenable.com/downloads/nessus?loginAttempted=true
要注意下载对应的平台和版本

[Nessus 最新版本8.13.1破解安装教程](https://www.freebuf.com/sectool/260004.html)

[使用centos安装nessus 8.13，并解除IP限制](https://www.jianshu.com/p/295f24e71c96)
> 破解步骤更加详细
> 当前版本插件 https://plugins.nessus.org/v2/plugins.php

sudo su
apt install ./Nessus-8.14.0-ubuntu1110_amd64.deb 
/bin/systemctl start nessusd.service
/opt/nessus/sbin/nessuscli fetch --challenge

https://plugins.nessus.org/v2/offline.php

[再注册](https://zh-cn.tenable.com/products/nessus/nessus-essentials)

是不是要选导入 规则？
/opt/nessus/sbin/nessuscli update all-2.0.tar.gz
/opt/nessus/sbin/nessuscli fetch --register-offline nessus.license

/bin/systemctl restart nessusd.service

1.备份/opt/nessus/lib/nessus/plugins/中的插件文件

```bash
cd /opt/nessus/lib/nessus
sudo cp -r /opt/nessus/lib/nessus/plugins plugins.bak
# 或
tar cvf plugins.tar plugins
```

2. 修改plugin_feed_info.inc文件

```bash
grep PLUGIN_SET  /opt/nessus/var/nessus/plugin_feed_info.inc > plugin_feed_info.inc
echo 'PLUGIN_FEED = "ProfessionalFeed (Direct)";
PLUGIN_FEED_TRANSPORT = "Tenable Network Security Lightning";' >> plugin_feed_info.inc

sudo cp plugin_feed_info.inc /opt/nessus/var/nessus/plugin_feed_info.inc
sudo rm -rf /opt/nessus/lib/nessus/plugins/plugin_feed_info.inc
```

vim plugin_feed_info.inc
```yaml
PLUGIN_SET = "202104140854";
PLUGIN_FEED = "ProfessionalFeed (Direct)";
PLUGIN_FEED_TRANSPORT = "Tenable Network Security Lightning";
```

/opt/nessus/var/nessus/plugin_feed_info.inc
cp ./plugin_feed_info.inc /opt/nessus/var/nessus/
rm -rf /opt/nessus/lib/nessus/plugins/plugin_feed_info.inc

systemctl disable nessusd
service nessusd stop
service nessusd start

/bin/systemctl restart nessusd.service
/bin/systemctl stop nessusd.service
cd /opt/nessus/lib/nessus
rm -rf plugins
tar xvf plugins.tar
find plugins_bak/ -name "*.nasl" | xargs -i cp {} train
cp /home/osboxes/plugin_feed_info.inc /opt/nessus/lib/nessus/plugins/plugin_feed_info.inc

[Linux中“Argument list too long”解决方法](http://noahsnail.com/2017/11/23/2017-11-23-Linux%E4%B8%AD%E2%80%9CArgument%20list%20too%20long%E2%80%9D%E8%A7%A3%E5%86%B3%E6%96%B9%E6%B3%95/)

/bin/systemctl start nessusd.service

更新插件

注册一个
https://zh-cn.tenable.com/products/nessus/nessus-essentials
https://plugins.nessus.org/offline.php
/opt/nessus/sbin/nessuscli fetch --challenge
/opt/nessus/sbin/nessuscli update all-2.0.tar.gz
/opt/nessus/etc/nessus/nessus-fetch.rc

### docker

## 使用:

[Nessus之——Nessus的整理](https://blog.csdn.net/l1028386804/article/details/84137453)


