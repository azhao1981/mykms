# 扫描

## 扫描防御

我谈网络扫描 -- 之三
https://blog.51cto.com/zoukejian/61737

我们应该使用各种针对端口和漏洞扫描的检测和防护措施，来积极地跟恶意的网络扫描做斗争，限制他们的扫描范围，减少他们通过扫描能获得的信息，从而更好地保护我们的网络安全。

## 扫描工具
### nessus
下载
https://www.tenable.com/downloads/nessus?loginAttempted=true
要注意下载对应的平台和版本

神兵利器系列|nessus8.8安装破解
https://blog.csdn.net/milkway2013/article/details/105142471
破解的方法还是在 更换 plugin_feed_info.inc 上

```bash
export PLUGIN_SET="202007291115"
cat > /opt/nessus/lib/nessus/plugins/plugin_feed_info.inc <<EOF
PLUGIN_SET = ${PLUGIN_SET};
PLUGIN_FEED = "ProfessionalFeed (Direct)";
PLUGIN_FEED_TRANSPORT = "Tenable Network Security Lightning";
EOF
cat > /opt/nessus/var/nessus/plugin_feed_info.inc <<EOF
PLUGIN_SET = ${PLUGIN_SET};
PLUGIN_FEED = "ProfessionalFeed (Direct)";
PLUGIN_FEED_TRANSPORT = "Tenable Network Security Lightning";
EOF
```
更新插件

https://zh-cn.tenable.com/products/nessus/activation-code?tns_redirect=true#nessus
Nessus Essentials
注册一个
https://plugins.nessus.org/offline.php
/opt/nessus/sbin/nessuscli fetch --challenge
256de4da507f88a7eac6fd86e12ae66d40bc77a1

/opt/nessus/sbin/nessuscli update all-2.0.tar.gz
sudo /opt/nessus/sbin/nessuscli update ./all-2.0.tar.gz

[sudo] password for ubuntu:
下载最新插件，请到知识星球搜索“安全工具箱”
Shared by Shad0wpf
Nessus插件更新中...
Nessus插件更新完成，重启服务...
cp: cannot stat '/opt/nessus/var/nessus/www/policy_wizards.json': No such file or directory
sed: can't read /opt/nessus/var/nessus/www/policy_wizards.json: No such file or directory
sed: can't read /opt/nessus/var/nessus/www/policy_wizards.json: No such file or directory
cp: cannot stat '/opt/nessus/etc/nessus/nessus-fetch.db.bak': No such file or directory

[nessus pro破解安装及插件离线跟新|windows](https://www.mad-coding.cn/2019/11/27/nessus-pro%E7%A0%B4%E8%A7%A3%E5%AE%89%E8%A3%85%E5%8F%8A%E6%8F%92%E4%BB%B6%E7%A6%BB%E7%BA%BF%E8%B7%9F%E6%96%B0/#0x06-%E7%A6%BB%E7%BA%BF%E8%B7%9F%E6%96%B0)

[Nessus v8.x 永久破解方法](http://j0k3r.top/2020/01/05/nessus-crack/#3-%E6%9B%BF%E6%8D%A2%E6%96%87%E4%BB%B6)

使用:
Nessus之——Nessus的整理
https://blog.csdn.net/l1028386804/article/details/84137453

没有 compliance的问题: 应该是安装了试用版本
试一下用pro版本

Be sure to check the Vulnerabilities tab. 
It will list if there were any authentication failures, which could be why there are no results. 
Also in your scan configuration you can enable debugging:

Go to: Settings -> Advanced

Change: 'Scan Type' to 'Custom'

Go to: Settings -> Advanced -> General

https://slidelegend.com/nessus-compliance-checks-tenable-support-portal_59b258121723dd6c7341e172.html

### Goby ****

白帽汇出品扫描神器,用于扫描内网不错

[主页](https://cn.gobies.org/)

[github](https://github.com/gobysec/Goby)

[下载](https://cn.gobies.org/goby-win-x64-1.6.154.zip)

依赖: [npcap](https://nmap.org/npcap/#download)

[npcap下载](https://nmap.org/npcap/dist/npcap-0.9983.exe)

其它引用

[Goby插件分享 | 可以上传json文件的“Shodan插件”](https://nosec.org/home/detail/4516.html)

[Goby插件分享 | 可以查看摄像头快照的“Hikvision插件”](https://nosec.org/home/detail/4515.html)

### OpenVAS ***

OpenVAS（Open Vulnerability Assessment System）是在nessus基础上发展起来的一个开源的漏洞扫描程序，其核心部件是一套漏洞测试程序，可以检测远程系统和应用程序中的安全问题。

[主页](https://www.openvas.org/)

[Openvas配置slave的debug之路](https://www.freebuf.com/sectool/226016.html)

[以Docker容器的形式运行openvas](https://www.freebuf.com/sectool/234253.html)
