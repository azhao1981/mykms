# kali lab

## 安装

建议使用 virtual box 安装
### virtual box
 主页 https://www.virtualbox.org/
 下载页 https://www.virtualbox.org/wiki/Downloads

 下载 主程序 https://download.virtualbox.org/virtualbox/6.1.16/VirtualBox-6.1.16-140961-Win.exe
 下载  扩展包 https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack

 安装 virtualbox
 安装扩展包
 创建全局 NatNetwork

### 下载 kali

[下载页](https://www.offensive-security.com/kali-linux-vm-vmware-virtualbox-image-download/) 
下载 [virtualBox 镜像 ](https://images.kali.org/virtual-images/kali-linux-2020.4-vbox-amd64.ova)
或下载 udemy 学习的镜像 https://drive.google.com/file/d/1pJrSknW0X0nkFFWYsaA37EqN9NA9Fsdd/view

导入镜像
选择重新生成mac地址
2C4G
如果是高清屏，打开后右下角，虚拟显示器 缩放200%

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

tor
下载： https://dist.torproject.org/torbrowser/10.0.7/tor-browser-linux64-10.0.7_zh-CN.tar.xz
解压后直接使用
注意需要科学上网下载，或看一下迅雷之类是否可以
打开必须使用 非root 用户，如kali
打开后选择配置 勾选“我所在的国家对Tor进行了审查”
选择 meek-azure
确定 开始连接

Tor 使用 duckduckgo.com 所为搜索引擎
特点是不会暴漏隐私
Tor速度很慢，但可以正常访问，并且不可以访问 google.com
也基本不能访问国内网站
搜索 what is my ip  点击一个进去可以看到自己的ip是国外的一个ip

### v2ray

151.101.8.133   raw.githubusercontent.com
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
Xray专属客户端winXray使用教程
https://v2xtls.org/xray%e4%b8%93%e5%b1%9e%e5%ae%a2%e6%88%b7%e7%ab%afwinxray%e4%bd%bf%e7%94%a8%e6%95%99%e7%a8%8b/

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

