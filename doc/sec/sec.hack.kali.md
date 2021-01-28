# kali lab

## 安装

建议使用 virtual box 安装

### virtual box
 [主页](https://www.virtualbox.org/) 

 [下载页](https://www.virtualbox.org/wiki/Downloads) 

 下载 [主程序](https://download.virtualbox.org/virtualbox/6.1.16/VirtualBox-6.1.16-140961-Win.exe) 

 下载  [扩展包](https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack) 

 + 安装 virtualbox
 + 双击安装扩展包
 + 创建一个全局 NatNetwork

### 下载 kali

[下载页](https://www.offensive-security.com/kali-linux-vm-vmware-virtualbox-image-download/) 

下载 [virtualBox 镜像 ](https://images.kali.org/virtual-images/kali-linux-2020.4-vbox-amd64.ova)
或下载 udemy 学习的镜像 https://drive.google.com/file/d/1pJrSknW0X0nkFFWYsaA37EqN9NA9Fsdd/view

+ 导入镜像
+ 选择重新生成mac地址
+ 2C4G
+ 如果是高清屏，打开后右下角，虚拟显示器 缩放200%

### kali 中文

[2020年kali最新国内更新源/etc/apt/sources.list](https://blog.csdn.net/SouthWind0/article/details/108405281)

/etc/apt/sources.list

```bash
deb http://mirrors.aliyun.com/kali kali-rolling main non-free contrib
deb-src http://mirrors.aliyun.com/kali kali-rolling main non-free contrib
```

```bash
apt update

# 如果使用udemy 版本，需要自己那建 kali用户
adduser kali

visudo
kali    ALL=(ALL:ALL) ALL
```

安装中文
```bash
apt install xfonts-intl-chinese ttf-wqy-microhei -y
dpkg-reconfigure locales
# 选择 en_US.utf-8 zh_CN.utf-8
reboot
```

### 下载win10 镜像

https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/

## 匿名网络隐藏自己

### tor

下载： https://dist.torproject.org/torbrowser/10.0.7/tor-browser-linux64-10.0.7_zh-CN.tar.xz

解压后直接使用

注意需要科学上网下载，或看一下迅雷之类是否可以

+ 打开必须使用 非root 用户，如kali
+ 打开后选择配置 勾选“我所在的国家对Tor进行了审查”
    选择 meek-azure
    确定 开始连接
+ 如果不行，先科学上网，选代理
+ 要经常上，保证获取最新入口

Tor 使用 duckduckgo.com 所为搜索引擎

特点是不会暴漏隐私

Tor速度很慢，但可以正常访问，并且不可以访问 google.com

也基本不能访问国内网站

搜索 what is my ip  点击一个进去可以看到自己的ip是国外的一个ip

### v2ray 科学上网

```bash
# /etc/hosts
151.101.8.133   raw.githubusercontent.com
```

curl: (35) OpenSSL SSL_connect: Connection reset by peer in connection to raw.githubusercontent.com:443
kali curl: (35)

bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

暂时无法解决，直接下载

bash ./install-release.sh

客户端 https://github.com/Dr-Incognito/V2Ray-Desktop

这个有点问题，加密方法不太对，但支持 Trojan
https://github.com/Qv2ray/Qv2ray/releases

[Debian/Ubuntu/Deepin Qv2ray 使用指南](https://linger.ink/2020/linux-qv2ray-usage)

在Ubuntu上安装图形化v2Ray客户端Qv2Ray （2020年7月更新）
https://medium.com/@eleveninstrangerthings/%E5%9C%A8ubuntu%E4%B8%8A%E5%AE%89%E8%A3%85%E5%9B%BE%E5%BD%A2%E5%8C%96v2ray%E5%AE%A2%E6%88%B7%E7%AB%AFqv2ray-d0f690b7c519

### Trojan

一键安装

```bash
curl -O https://raw.githubusercontent.com/atrandys/trojan/master/trojan_mult.sh && chmod +x trojan_mult.sh && ./trojan_mult.sh
```

问题1： [[BUG]unknown protocol ](https://github.com/trojan-gfw/trojan/issues/519)

这是客户端连端口时协议不对的问题，请注意客户端的正确用法

1. linux 使用 Trojan-Qt5，浏览器使用系统的代理设置
2. windows 使用winXray,同上

问题2:

./trojan_mult.sh: line 269: /root/.acme.sh/acme.sh: No such file or directory

解决： 手动安装一下 [acme](https://github.com/acmesh-official/acme.sh)

```bash
curl https://get.acme.sh | sh
```

### trojan客户端下载 参考： <https://tlanyan.me/trojan-clients-download/>

linux Trojan-Qt5 （这个可以用）

[Trojan-Qt5下载及使用教程 Trojan Windows客户端/图形化界面/支持SS/SSR/V2ray/Trojan/Snell](https://v2xtls.org/trojan-qt5%e4%b8%8b%e8%bd%bd%e5%8f%8a%e4%bd%bf%e7%94%a8%e6%95%99%e7%a8%8b-trojan-windows%e5%ae%a2%e6%88%b7%e7%ab%af-%e5%9b%be%e5%bd%a2%e5%8c%96%e7%95%8c%e9%9d%a2-%e6%94%af%e6%8c%81ss-ssr-v2ray-trojan/)

把上面一键安装后产生的config.json 导入就可以

### windows
Xray / V2Ray( vmess/vless )、Shadowsocks、Trojan 通用客户端（Windows），可自动维持稳定上网 - 代理服务器异常自动切换，并提供一键部署代理服务端工具，使用 aardio 编写，绿色便携版免安装仅5MB、不需要.Net等外部运行库。

https://github.com/i5g5vip/winXray

绿色版本，把上面的Trojan-Qt5 的shard 一下，右键主页 导入 “自剪帖板。。。”

这个很棒，有很多可以用的免费的资源

[Xray专属客户端winXray使用教程](https://v2xtls.org/xray%e4%b8%93%e5%b1%9e%e5%ae%a2%e6%88%b7%e7%ab%afwinxray%e4%bd%bf%e7%94%a8%e6%95%99%e7%a8%8b/)

### 免费 [vpnbook](https://www.vpnbook.com/)

注：如果你用的是自己的vps,那么还是不安全的，使用公共免费的vpn 资料，在大众里浑水摸鱼。

但国内是不能直接用 OpenVPN,考虑一下

+ 使用别的收费或加密的vpn，如 [wireguard](https://github.com/wireguard)
  [用 WireGuard 科学上网](https://github.com/wgredlong/WireGuard)
+ 使用 proxychains ，通过科学上网的socks5,再上 OpenVPN
  + 不建议使用  openvpn的自带的 proxy-socks模式，不太好用
  + vpnbook 选udp的才行，不知道是不是我的v2ray选udp模式的原因

引用

[Routing traffic through OpenVPN using a local SOCKS proxy](https://kiljan.org/2017/11/15/routing-traffic-through-openvpn-using-a-local-socks-proxy/)

[windows完全代理配置(包括UWP,应用商店,系统更新)](https://zhuanlan.zhihu.com/p/113108221)

Netch 是一款 Windows 平台的开源游戏加速工具，Netch 可以实现类似 SocksCap64 那样的进程代理，也可以实现 SSTap 那样的全局 TUN/TAP 代理，和 Shadowsocks-Windows 那样的本地 Socks5，HTTP 和系统代理
https://github.com/NetchX/Netch/blob/master/docs/README.zh-CN.md

[双虚拟机隔离上网完整教程](https://bitmingw.com/2017/09/10/double-vm-isolated-network/)
这里有一个tor linux代理的

[Windows全局代理软件Proxifier](https://ff120.github.io/2016/06/12/%E5%B7%A5%E5%85%B7%E7%9A%84%E4%BD%BF%E7%94%A8/Windows%E5%85%A8%E5%B1%80%E4%BB%A3%E7%90%86%E8%BD%AF%E4%BB%B6Proxifier/)

在命令行测试一下是ip是不是已经走国外了

curl cip.cc
curl myip.ipip.net

账号和密码：
vpnbook
k8VBRa6

https://superuser.com/questions/608897/openvpn-through-socks-proxy-on-linux
https://kiljan.org/2017/11/15/routing-traffic-through-openvpn-using-a-local-socks-proxy/

这样是可以连上的，但执行命令报 Cannot resolve host address: us2.vpnbook.com:443
proxychains openvpn ./vpnbook-us2-tcp443.ovpn

解决：
proxychains openvpn ./vpnbook-us2-udp25000.ovpn
好像得用这个，可能是proxy用的是udp,所以上面也得用udp，反正是可以了

一些rce的
https://github.com/AleWong

|S-chain|-<>-127.0.0.1:51837-<><>-4.2.2.2:53-<><>-OK
|DNS-response|: us2.vpnbook.com does not exist
Mon Jan 18 12:35:34 2021 RESOLVE: Cannot resolve host address: us2.vpnbook.com:443 (Unknown error)
Mon Jan 18 12:35:34 2021 Could not determine IPv4/IPv6 protocol
Mon Jan 18 12:35:34 2021 SIGUSR1[soft,init_instance] received, process restarting
Mon Jan 18 12:35:34 2021 Restart pause, 5 second(s)
Mon Jan 18 12:35:39 2021 WARNING: No server certificate verification method has been enabled.  See http://openvpn.net/howto.html#mitm for more info.
Mon Jan 18 12:35:39 2021 NOTE: --fast-io is disabled since we are not using UDP
Mon Jan 18 12:35:39 2021 TCP/UDP: Preserving recently used remote address: [AF_INET]198.7.58.147:443
Mon Jan 18 12:35:39 2021 Socket Buffers: R=[131072->131072] S=[16384->16384]
Mon Jan 18 12:35:39 2021 Attempting to establish TCP connection with [AF_INET]198.7.58.147:443 [nonblock]
|S-chain|-<>-127.0.0.1:51837-<><>-198.7.58.147:443-<><>-OK
Mon Jan 18 12:35:39 2021 TCP connection established with [AF_INET]198.7.58.147:443
Mon Jan 18 12:35:39 2021 TCP_CLIENT link local: (not bound)
Mon Jan 18 12:35:39 2021 TCP_CLIENT link remote: [AF_INET]198.7.58.147:443
Mon Jan 18 12:35:49 2021 Connection reset, restarting [-1]
Mon Jan 18 12:35:49 2021 SIGUSR1[soft,connection-reset] received, process restarting
Mon Jan 18 12:35:49 2021 Restart pause, 5 second(s)
Mon Jan 18 12:35:54 2021 WARNING: No server certificate verification method has been enabled.  See http://openvpn.net/howto.html#mitm for more info.
Mon Jan 18 12:35:54 2021 NOTE: --fast-io is disabled since we are not using UDP

这里是使用 openvpn 的 proxy-socks 模式：

openvpn --socks-proxy 127.0.0.1 51837  ./vpnbook-us2-tcp443.ovpn
Mon Jan 18 12:41:20 2021 disabling NCP mode (--ncp-disable) because not in P2MP client or server mode
Options error: You must define TUN/TAP device (--dev)
Use --help for more information.

modinfo tun
lsmod | grep tun
modprobe tun
echo 1 > /proc/sys/net/ipv4/ip_forward

官方文档：
https://community.openvpn.net/openvpn/wiki/Openvpn24ManPage?__cf_chl_jschl_tk__=c7d3555de32067a8e4497196dde6c69850303a2f-1610991994-0-AdUl4pwh_MKXyy-Qb_igTnc99qaCGvwSN1_z9spOERwUTVO_YH0dvsh2urrAaV8DvOxk1keFsNR7Pg6nuIr0Qojvv9PDVENW-0qg2Iv_PqnMgSTBGTAt6sYSVO71g3TlQjJ_hLQaYuM_Ln41A9XIauk22Xi7ASn4vqaMg98CeWuX7YLp0zfwpQ3MTKbn3gtvm0SB9TpSk0rGh9JbJTbAzKrqjCZakzMq6Cx0GErEQWp7IZWLYMeaFA4EdWZUzBdxTo97lNO2BHsfu4625DiECfg0BF3zgBhMHe9TxVvN6avx1-SCs3Z0eAMbMyt4-Oy2OI1mzxv6ttpBJjQ-u3GgJno

在计算机网络中，TUN与TAP是操作系统内核中的虚拟网络设备。不同于普通靠硬件网络适配器实现的设备，这些虚拟的网络设备全部用软件实现，并向运行于操作系统上的软件提供与硬件的网络设备完全相同的功能。
TAP等同于一个以太网设备，它操作第二层数据包如以太网数据帧。TUN模拟了网络层设备，操作第三层数据包比如IP数据封包。
操作系统通过TUN/TAP设备向绑定该设备的用户空间的程序发送数据，反之，用户空间的程序也可以像操作硬件网络设备那样，通过TUN/TAP设备发送数据。在后种情况下，TUN/TAP设备向操作系统的网络栈投递（或“注入”）数据包，从而模拟从外部接受数据的过程。
TUN/TAP被用于：
虚拟私有网络
OpenVPN

 openvpn --socks-proxy 127.0.0.1 51837 --dev tun0 ./vpnbook-us2-tcp443.ovpn
root@kali:/home/kali/桌面/App/vpn#  openvpn --socks-proxy 127.0.0.1:1081 ./vpnbook-us2-tcp443.ovpn
Mon Jan 18 11:55:51 2021 disabling NCP mode (--ncp-disable) because not in P2MP client or server mode
Options error: You must define TUN/TAP device (--dev)
Use --help for more information.
这篇应该和答案很近了：
OpenVPN 安装配置资料总结和整理
http://blog.mr-zrz.com/openvpn-%E5%AE%89%E8%A3%85%E9%85%8D%E7%BD%AE%E8%B5%84%E6%96%99%E6%80%BB%E7%BB%93%E5%92%8C%E6%95%B4%E7%90%86.html
https://my.oschina.net/propagator/blog/824915
利用OpenVPN实现局域网内多台机器共享上网

https://blog.lopygo.com/2020/2020-03-06-openvpn-over-ss/
这个blog的主题不错
https://github.com/iissnan/hexo-theme-next

关于TUN/TAP网卡二三事以及物理网卡Ring buffer
https://blog.csdn.net/dog250/article/details/80414228

Acquire::socks::Proxy "socks://username:pass@myProxyAddress:port/";

socks://127.0.0.1:1081

VPN connection with VirtualBox
https://superuser.com/questions/529910/vpn-connection-with-virtualbox


curl –socks5 localhost:9050 google.com
https://github.com/rtsundland/openvpn-socks
curl -x socks5://localhost:1080/ github.com

## 参考

[V2Ray配置生成器 - int main()](https://intmainreturn0.com/v2ray-config-gen/)

[v2ray配置生成](https://www.veekxt.com/utils/v2ray_gen)

[强大的 v2ray 配置文件生成器](https://blog.sprov.xyz/2019/07/19/v2ray-config-generator/)

[神一样的工具们](https://www.v2ray.com/awesome/tools.html)

Mellow 是一个基于规则的全局透明代理工具，可以运行在 Windows、macOS 和 Linux 上，也可以配置成路由器透明代理或代理网关，支持 SOCKS、HTTP、Shadowsocks、VMess 等多种代理协议。
[Github主页](https://github.com/mellow-io/mellow)

[2020年博客写作总结](https://tlanyan.me/2020-blog-summary/)

其中不错的：

[Xray教程](https://tlanyan.me/xray-tutorial/)

[V2Ray客户端](https://tlanyan.me/v2ray-clients-download/)

https://u.tools/

[ditto](https://cfhcable.dl.sourceforge.net/project/ditto-cp/Ditto/3.23.124.0/DittoPortable_64bit_3_23_124_0.zip) 

Ditto - 开源免费的 Windows 剪贴板增强工具神器 (方便复制粘贴多条历史记录)
https://www.iplaysoft.com/ditto.html

## tor 匿名网络 中继

需要建立一个Tor中继网桥,公共tor还是太慢了
tor 

优秀免费代理软件 SocksCap64 v4.7 中文版|没有成功
https://www.19ri.com/sockscap64.html
https://www.lanzous.com/i6gk2cb

其实就是一个代理软件，与Linux下的 proxychains、Windows中的Proxfier类似。

How To Setup Proxychains In Kali Linux - #2 - Change Your IP
https://www.youtube.com/watch?v=FtFTh-KVjsA
这个比较新
learning hacking? DON'T make this mistake!! (hide yourself with Kali Linux and ProxyChains)
https://www.youtube.com/watch?v=qsA8zREbt6g

NetworkChuck 
https://www.youtube.com/channel/UC9x0AN7BWHpCDHSm9NiJFJQ
HackerSploit 
https://www.youtube.com/channel/UC0ZTPkdxlAKf-V33tqXwi3Q
Null Byte
https://www.youtube.com/channel/UCgTNupxATBfWmfehv21ym-g
freeCodeCamp.org  | 有很多教程，好东西
https://www.youtube.com/channel/UC8butISFwT-Wl7EV0hUK0BQ

https://github.com/haad/proxychains
https://github.com/rofl0r/proxychains-ng
一次解决所有代理问题
https://guangchuangyu.github.io/cn/2018/09/proxychains/


https://linuxhint.com/proxychains-tutorial/

The Top 10 Things to Do After Installing Kali Linux on Your Computer [Tutorial]

https://www.youtube.com/watch?v=8VL0K0rFgxw
1:28 - Install Git
2:40 - Configure Bash Aliases
4:28 - Create a New Low Privileged User
6:20 - Install a Terminal Multiplexer
7:30 - Install Your Favorite Hacking Tools
9:40 - Install Latest Version of Tor
11:31 - Configure File Sharing with Syncthing
13:38 - Install a Code Editor
16:21 - Clone Rubber Ducky Encoder
18:56 - Change Default Password & SSH Keys

How to be anonymous on the web? Tor, Dark net, Whonix, Tails, Linux
https://www.youtube.com/watch?v=_393maHbHWc

Linux for Ethical Hackers (Kali Linux Tutorial)
https://www.youtube.com/watch?v=lZAoFs75_cs&list=RDCMUC8butISFwT-Wl7EV0hUK0BQ&start_radio=1&t=2

### tor 中继网桥

主要为解决tor中国速度慢的问题

[使用闲置的小机搭建Tor网桥|这个应该比较符合](https://www.skoilly.cn/?p=126)

[Tor网络中搭建私人网桥](https://www.jianshu.com/p/04afdf2ac417)
https://community.torproject.org/relay/setup/bridge/
还有不同的IPs运营商的支持情况
https://gitlab.torproject.org/legacy/trac/-/wikis/doc/GoodBadISPs

分三种情况
Bridges
Relay
Exit  大多数IPS都不支持 Exit-Relays 因为很容易被投诉并封锁

成为对抗互联网追踪的志愿者：如何搭建 Tor（洋葱网络）节点
https://zhuanlan.zhihu.com/p/34358838

Tor.cn 不能直接使用从网站上获取的网桥信息，以下是把网页上获取的网桥直接放到手动输入里得到结果
1/6/21, 03:01:51.956 [NOTICE] Closing no-longer-configured Socks listener on 127.0.0.1:9150
1/6/21, 03:01:51.956 [NOTICE] DisableNetwork is set. Tor will not make or accept non-control network connections. Shutting down all existing connections.
1/6/21, 03:01:52.640 [NOTICE] Delaying directory fetches: DisableNetwork is set.
1/6/21, 03:02:03.125 [NOTICE] DisableNetwork is set. Tor will not make or accept non-control network connections. Shutting down all existing connections.
1/6/21, 03:02:03.125 [NOTICE] Switching to guard context "bridges" (was using "default")
1/6/21, 03:02:03.125 [NOTICE] DisableNetwork is set. Tor will not make or accept non-control network connections. Shutting down all existing connections.
1/6/21, 03:02:03.126 [NOTICE] DisableNetwork is set. Tor will not make or accept non-control network connections. Shutting down all existing connections.
1/6/21, 03:02:03.126 [NOTICE] Opening Socks listener on 127.0.0.1:9150
1/6/21, 03:02:03.126 [NOTICE] Opened Socks listener on 127.0.0.1:9150
1/6/21, 03:02:25.116 [WARN] Proxy Client: unable to connect to 45.59.126.23:443 ("general SOCKS server failure")

TOR浏览器的新网桥-snowflake
https://www.igfw.net/archives/14055
然后在我们的Google chrome或者Firefox浏览器里安装运行Snowflake扩展并开启，
下载地址：https://snowflake.torproject.org/
选择 snowflfake 

使用obfsproxy4连接Tor网桥来翻墙（自行在vps上搭建tor bridge.
https://briteming.blogspot.com/2017/05/obfs4tor.html
浏览器加固

首先是打上Privacy Badger和HTTPS Everywhere插件，来自大名鼎鼎的 EFF 也就是电子前哨基金会。

1：Privacy Badger中文名隐私獾，主要是限制各类商业trackers，此插件还能关闭WebRTC，插件安装后，点击设置标志然后勾选“阻止 WebRTC 泄露本地 IP 地址”即可。插件下载页面：

https://privacybadger.org/

2：使用HTTPS Everywhere插件强制https连接，tor上可以防止蜜罐窥探到访问内容：

https://www.eff.org/https-everywhere

3：Neat URL此插件能清除URL内的parameters，防止类似Google Analytics的分析流量，项目地址：

https://github.com/Smile4ever/Neat-URL

4：还有一个很野蛮的加固浏览器方法，此方法会严重影响浏览器易用性，严重警告，大家酌情添加，下面是项目地址：

https://github.com/pyllyukko/user.js

简单点讲就是下载user.js文件放入火狐 [firefox directory]\Data\profile\ 文件夹里，重启即可。

浏览器加固就先讲这么多，其它还有阻止部分Javascript APIs生成指纹乃至直接禁用JS脚本，删除不安全的根证书等老生常谈的话题就不展开了.)

Debian10搭建Tor网桥（入口节点）
https://lala.im/7105.html

提取 Tor 并搭建 Tor Bridge |　从tor browser 中提取 tor代理
https://imzlp.me/posts/11177/

## telegram signal darknet

### google voice

通过淘宝买一个google voice ，以注册 telegram 和 signal

### telegram

### signal

### darknet

tor: hidden wiki


## 收集信息

### nmap

nmap -v -sn  10.10.0.0/24

10.10.0.10
10.10.0.30
10.10.0.34
10.10.0.50
10.10.0.54
10.10.0.62
10.10.0.82
10.10.0.86
10.10.0.90
10.10.0.102
10.10.0.122
10.10.0.118
10.10.0.142

## wifi
可用例子
alfa awus036NH 2000mw 2w 802.11g/n

goole: usb wifi adapter compatiable with kali linux

https://www.wirelesshack.org/best-kali-linux-compatible-usb-adapter-dongles.html
Most Popular Kali Linux Pen Testing Wireless Chipsets.
需要支持 packet inject 和 monitor mode
Atheros AR9271
Ralink RT3070
Ralink RT3572
Ralink RT5572
Realtek RTL8812AU
Ralink RT5370N 20左右

现在 EP-N8508GS 不可用

https://null-byte.wonderhowto.com/how-to/buy-best-wireless-network-adapter-for-wi-fi-hacking-2019-0178550/

AWUS036NH 
https://www.amazon.com/Alfa-AWUS036NH-802-11g-Wireless-Long-Range/dp/B003YIFHJY/ref=sr_1_3?crid=3AXPJZJ3XKWS&keywords=awus036nh&qid=1553021468&s=gateway&sprefix=awus0%2Caps%2C370&sr=8-3

感觉都有点老
求完美支持kali的（支持监听、注入）usb无线网卡?若高频大功率更好
https://www.zhihu.com/question/22333630
推荐的是TP-LINK 的 WN722N ，国内电商可以买到. 实测在 Kali 里面可用。
  TP-LINK 722N 不支持linux ,千万别买， 在kali上面无法识别，今天我买了一个，到货了，试了各种方法都没用，打算退货
  确认：有几个店写明了不支持 kali linux
强烈推荐RLT8187L，功率高，兼容性好
其次是Ralink3070功率较低，兼容差，但连接上以后网络稳定，适合日常使用
TL-WN821N ver:5.0亲测kali无反应另外还有一个办法是在 lib/modules/xxx-kali-xxx/kernal/drivers/net/wireless 文件夹下查看有哪些支持网卡的驱动，再进行有针对性的选购 目前在某东看见 网件的一款WNA1100貌似满足要求，东西正在配送中， 到手再说。
ALFA AWUSO36H啊，美亚买吧，国内淘宝的都是坑爹的货。??
用AWUS036ACH，2017.3版本刚支持，这个设备支持IEEE的最新标准，也就是abgn的。
我用的是rtl8187L的在淘宝上搜就可以了

2019年最适用于kali linux无线渗透测试网卡推荐暨wifi破解网卡
https://www.mzbky.com/56.html
https://shop307204092.taobao.com/
  免运费
白色Ralink RT3070
黑色双天线Ralink RT3070（大功率）
黑色雷达天线Ralink RT3070（大功率）12dbi雷达天线
  像这个 https://detail.tmall.com/item.htm?spm=a230r.1.14.19.208241feclMmul&id=612354885973&ns=1&abbucket=15
  但tb上没有标明芯片类型，也没写支持linux
黑色Ralink RT5572 300M（5g双频）
黑色Ralink RT5572 6dbi天线（5g双频）
黑色Ralink RT5370

https://shop58810947.taobao.com/?spm=a1z10.5-c-s.0.0.48a6244fHtj9dL

用于黑客渗透测试的 21 个最佳 Kali Linux 工具 | Linux 中国
https://blog.csdn.net/F8qG7f9YD02Pe/article/details/90282252
Kali系统中20个超好用黑客渗透工具，你知道几个？
https://www.cnblogs.com/wjw-zm/p/11695688.html
Kali Linux上的10种最佳渗透测试工具
https://zhuanlan.zhihu.com/p/103684132

### kali wifi 安装

这里以  Realtek RTL8812AU 为例

virtualbox 选择虚拟机->设置->usb设备
1 启动usb控制器 选3.0
2 添加 Realtek 802.11n Nic

virtualbox 选择虚拟机->设置->网络
改网络1为桥接网络，选 Realtek 802.11n Nic

### change mac
ifconfig wlan0 down
macchanger --help

macchanger --random wlan0
ifconfig wlan0 up

### 监听模式
sudo airmon-ng start wlan0
ifconfig
iwconfig
sudo airmon-ng stop wlan0mon

或使用 ifconfig
ifconfig wlan0 down
ifconfig wlan0 mode monitor
ifconfig wlan0 up
iwconfig
ifconfig wlan0 mode managed

service network-manager restart
service network-manager stop
service wpa_supplicant stop
https://askubuntu.com/questions/565515/problem-with-mon0-interface
sudo stop network-manager
echo "manual" | sudo tee /etc/init/network-manager.override

    588 wpa_supplicant
https://mlog.club/article/4237988
怕我会vbwq不行
oot@kali:/home/kali# iw dev wlan0 set type monitor

这里卡死了
