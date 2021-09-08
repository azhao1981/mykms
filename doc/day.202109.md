# 202009

## 20210908

https://www.dfxj.top/archives/docker安装confluence

【每日一库】ripgrep - grep的替代者
https://cloud.tencent.com/developer/article/1460054
https://github.com/BurntSushi/ripgrep

链接：https://www.zhihu.com/question/20821753/answer/503623838

Everything + TextSeekEverything可搜文件名，速度极快。TextSeek可搜文件内容，常见的word, ppt, excel, pdf，wps都能解析。界面类似搜索引擎，易上手。TextSeek是我用过的对中文内容搜索支持最好的，其他工具会漏掉的它都不会遗漏。两个工具互补，一个快，一个准，能解决桌面搜索文件的大部分问题。

everywhere
比 everything 还要强大，可以搜索文件内容，欢迎去github 观光，喜欢的star下。
最好用的：桌面搜索工具（或：硬盘搜索） 是什么？
https://www.zhihu.com/question/20821753

https://zh.tinystm.org/fix-high-cpu-usage-audiodg

https://bonsaibrowser.com/
Web-browser for research
that helps programmers
think clearly.

https://github.com/mgdm/htmlq
Like jq, but for HTML.

反制爬虫之Burp Suite RCE
https://www.anquanke.com/post/id/252591

「人对信息的关系，是创造信息和影响信息并使之适应成长需要的客观力量」，英语为「Productive Forces」，其核心在互联网时代已经由「自然」演变为「信息」，而这是我们任何人都绕不开的话题。
https://github.com/yaoleifly/Nonsense-Series
以下为一则清单，包含信息资讯、工具推荐、使用教程、生活感悟等，旨在将你引向独立思考和客观理性。我会持续更新和维护，也可以视作本人的「废话集」和 eBooksPlan 公众号文集的备份。
基于 WPF 实现的仿 Windows 桌面版微信 UI 界面库 An unofficial UI library for Windows WeChat based on WPF implementation
https://github.com/IUpdatable/WeUiSharp

渗透测试之地基服务篇：服务攻防之数据库Redis（上） 会员
https://www.freebuf.com/articles/network/281140.html
应急响应之windows入侵排查篇
https://www.freebuf.com/articles/network/286270.html
如何使用DNSStager在DNS中隐藏Payload
https://www.freebuf.com/articles/network/286304.html

https://www.freebuf.com/articles/es/286379.html
Allsafe：包含大量安全漏洞的Android研究平台

https://www.freebuf.com/sectool/286324.html
隐藏十五年的漏洞：CVE-2021-22555 漏洞分析与复现

https://www.freebuf.com/articles/system/286366.html
如何使用Regexploit识别ReDoS正则表达式拒绝服务攻击
https://www.freebuf.com/sectool/286566.html


https://www.intoan.com/archives/992.html
【教程】2019年的5个最佳Linux Torrent客户端

https://www.linuxtechi.com/rtorrent-command-line-bittorrent-client-ubuntu-linux/
https://github.com/rakshasa/rtorrent/wiki#installation
apt-get install rtorrent
curl -Ls "https://raw.githubusercontent.com/wiki/rakshasa/rtorrent/CONFIG-Template.md" \
    | sed -ne "/^######/,/^### END/p" \
    | sed -re "s:/home/USERNAME:$HOME:" >~/.rtorrent.rc
mkdir -p ~/rtorrent/
都没 有
service rtorrent status
ps aux|grep rtorrent 
[rtorrent 的安装、使用](https://blog.csdn.net/fenghuizhidao/article/details/107504616)
wget 'https://github.com/astaxie/bat/releases/download/v0.0.1/bat_0.0.1_linux_amd64.tar.gz'
tar xvf bat_0.0.1_linux_amd64.tar.gz
bat .rtorrent.rc

wget 'https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz'
tar xvf bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz

https://dev.deluge-torrent.org/wiki/About

apt install deluge -y
Debian/Ubuntu Deluge安装汉化教程及ltConfig插件设置
https://sunpma.com/188.html
Deluge 的配置、优化与远程控制
https://www.jianshu.com/p/d514665bf34b
apt install -y deluge-console

OpenSSL 国密爆出 8.1 分高危漏洞 CVE-2021-3711
https://paper.seebug.org/1695/
反制爬虫之 Burp Suite RCE
https://paper.seebug.org/1696/

## 20210905
从Windows 10 SSH-Agent中提取SSH私钥
https://www.freebuf.com/articles/system/172624.html

podman apt安装需要ubuntu20.10，但wsl不能直接装，需要升级来装
https://0xzx.com/202010240500903592.html
如何在Windows 10的WSL中​​升级到Ubuntu 20.10
https://podman.io/getting-started/
如何在 Windows 安全中心设置白名单
https://consumer.huawei.com/cn/support/content/zh-cn00694627/


Podman 初次体验

https://zdyxry.github.io/2019/10/12/Podman-%E5%88%9D%E6%AC%A1%E4%BD%93%E9%AA%8C/

. /etc/os-release
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/testing/xUbuntu_${VERSION_ID}/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:testing.list
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/testing/xUbuntu_${VERSION_ID}/Release.key" | sudo apt-key add -
sudo apt-get update -qq
sudo apt-get -qq -y install podman

## 20210904


## 20210903

It is forbiddened to send the plaintext of old password or new password to the user. If the application system sends a link email or short message to the user for password reset, it is recommended to send to the user email or mobile from user registration information and the link should be expired after 30 min

It is forbiddened to hash password with 1-round encryption without salt which can be easily exposed by rainbow attacks. It is recommended to hash passwords with:
1. At least 2-round encrption
2. At least 128-bit salt
submitOrderParam.payPassword: u34u33u37u38u38u35

Bcrypt
[Bcrypt加密之新认识](https://www.jianshu.com/p/2b131bfc2f10)
myHash: 经过明文密码password和盐salt进行hash，个人的理解是默认10次下 ，循环加盐hash10次，得到myHash
所以 bcrypt 是符合上面的要求的

[算法高级（22）-BCrypt加密算法，号称目前最安全的算法之一](https://blog.csdn.net/m0_37609579/article/details/100785947)

[什么是彩虹表？](https://www.zhihu.com/question/19790488)
彩虹表是一个用于加密散列函数逆运算的预先计算好的表，常用于破解加密过的密码散列。 
彩虹表常常用于破解长度固定且包含的字符范围固定的密码。这是以空间换时间的典型实践，
比暴力破解使用的时间更少，空间更多；但与储存密码空间中的每一个密码及其对应的哈希值实现的查找表相比，其花费的时间更多，空间更少。

## 20210901

浅谈如何规范开展等级保护定级和备案工作
https://www.freebuf.com/articles/neopoints/285684.html

如何开展信息安全风险评估工作——以红色警戒2游戏为例
https://www.freebuf.com/articles/compliance/284316.html

数据恢复大杀器 winhex 拌炒分区大杂烩 分区的16进制研究
https://www.anquanke.com/post/id/248773

阿里云： 公共读写 攻击

如果黑盒测试阿里云是不是错误配置为 公共读写

### 数据加密

[vault+MySQL静态数据加密和企业版TDE](https://blog.51cto.com/u_15080016/2642369)

[各路 MySQL proxy 功能对比及性能评测](https://zhjwpku.com/2018/01/16/mysql-proxy-alternatives.html)

都有最新的更新

https://github.com/mariadb-corporation/MaxScale
https://github.com/sysown/proxysql
a proxy for sharding databases and tables 主要是sharding
https://github.com/alibaba/cobar

