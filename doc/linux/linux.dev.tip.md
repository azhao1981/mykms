# linux 开发技巧

## zombie 进程处理

<https://mp.weixin.qq.com/s/1h8og5YZstIn2Ii1_enG1A>

## 生成随机密码

```bash
head -c 32 /dev/random | base64
head -c 32 /dev/urandom | base64
openssl rand -hex 10
openssl passwd -stdin < <(echo)
```

## 主版本升级

```bash
do-release-upgrade
```

## 内核升级

```bash
sudo dpkg --configure -a
sudo apt --fix-broken install
sudo apt autoremove
```
最近可能因为内核问题比较多，常见会报：

E: dpkg was interrupted, you must manually run 'sudo dpkg --configure -a' to correct the problem. 

fix：

`sudo dpkg --configure -a`

又报：

Errors were encountered while processing:
 linux-generic

随便安装一个如 apt install git-core

You might want to run 'apt --fix-broken install' to correct these.
The following packages have unmet dependencies:
 linux-generic : Depends: linux-headers-generic (= 4.15.0.137.124) but 4.15.0.136.123 is to be installed
E: Unmet dependencies. Try 'apt --fix-broken install' with no packages (or specify a solution).

```bash
apt --fix-broken install
uname -r
# 4.15.0-137-generic
sudo reboot
uname -a
# Linux ubuntu 4.15.0-149-generic #153-Ubuntu SMP Thu Jun 24 09:53:50 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
# 最后删除不用的内核
# Use 'sudo apt autoremove' to remove them.
sudo apt autoremove
```

应该是要4.15.0-149以上

## Linux命令大全

Linux命令大全搜索工具，内容包含Linux命令手册、详解、学习、搜集。https://git.io/linux

https://github.com/jaywcjlove/linux-command

## v2ray
https://github.com/jiangxufeng/v2rayL

sudo su
apt install curl -y

这个已经不能用了
bash <(curl -L -s https://install.direct/go.sh)

/etc/hosts
151.101.8.133 raw.githubusercontent.com

https://github.com/v2fly/fhs-install-v2ray
https://github.com/v2fly/fhs-install-v2ray/wiki/Migrate-from-the-old-script-to-this

curl -O https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
bash install-release.sh

ssh linode "apt update && apt install curl zip -y"
ssh linode "bash <(curl -L -s https://install.direct/go.sh)"
scp ./config.tcp.json linode:/etc/v2ray/config.json
ssh linode "service v2ray restart"

ssh linode "wget https://raw.githubusercontent.com/flyzy2005/ss-fly/master/ss-fly.sh && chmod +x ss-fly.sh && ./ss-fly.sh -bbr"
ssh linode "service v2ray restart"


V2Ray Ubuntu/Linux Mint 客户端 
https://be-my-only.xyz/blog/v2ray-linux-client-setting/
v2rayL：v2ray在linux下的GUI客户端
https://blog.thinker.ink/passage/29/

AI机器学习: 在 Ubuntu 上安装谷歌的TensorFlow, machine learning, 人工智能学习
https://justcode.ikeepstudying.com/2018/07/ai%E6%9C%BA%E5%99%A8%E5%AD%A6%E4%B9%A0-%E5%9C%A8-ubuntu-%E4%B8%8A%E5%AE%89%E8%A3%85%E8%B0%B7%E6%AD%8C%E7%9A%84tensorflow-machine-learning-%E4%BA%BA%E5%B7%A5%E6%99%BA%E8%83%BD%E5%AD%A6%E4%B9%A0/

普通程序员如何转向AI方向?
http://www.embeddedlinux.org.cn/emb-linux/entry-level/201701/09-6112.html


## nginx

### nginx as download

<https://miopas.github.io/2018/07/21/nginx-file-server/>
user root;
或是给目录权限

```config
  location /dl {
      alias /root/udemy-dl/; 	# 文件存放目录，注意要以 '/' 结尾；
      index index.html;  		    # 如果文件存放目录有 index.html，会跳转到 index.html；
      autoindex on;               # 自动列出目录下的文件；
      autoindex_exact_size off;   # 文件大小按 G、M 的格式显示，而不是 Bytes；
  }
```

## visual box

## Vagrant

[Windows 下使用 Vagrant 构建 Linux 开发环境](https://learnku.com/articles/2564/using-vagrant-to-build-linux-development-environment-under-windows)

## 为所有网卡生成mac地址，但不是生成新的ip

感觉这个比较好
https://www.cnblogs.com/yaohong/p/11593989.html

[如何在 Linux 上使用网络配置工具 Netplan](https://zhuanlan.zhihu.com/p/46544606)

查看当前网关：

route -n
netstat -r
ip route show

DNS:
```bash
# operation for /etc/resolv.conf.
nameserver 127.0.0.53
options edns0
```
cat /etc/network/interfaces
ifupdown has been replaced by netplan(5) on this system.  See
vim /etc/netplan/50-cloud-init.yaml

当前

inet 192.168.56.107  netmask 255.255.255.0  broadcast 192.168.56.255
inet 10.0.2.10  netmask 255.255.255.0  broadcast 10.0.2.255

修改：
```
network:
    ethernets:
        enp0s3:
            dhcp4: true
            addresses: [192.168.56.110/24]
        enp0s8:
            dhcp4: true
            addresses: [10.0.2.10/24]
            optional: true
            gateway4: 10.0.2.1
            nameservers:
              addresses: [223.5.5.5,223.6.6.6]
        enp0s9:
            dhcp4: true
    version: 2
```

```bash
sudo netplan try
sudo netplan apply
```

## hostname

```bash
sudo hostname new_name
sudo vim /etc/hostname
sudo vim /etc/hosts
# 127.0.0.1 new_name
sudo reboot
```

## a stop job is running for snap daemon

原因： 普通用户用 `sudo poweroff` 造成的

[参考|> A stop job is running for ... 的解决办法](https://zhuanlan.zhihu.com/p/60599578)

正确的姿势是

```bash
sudo su
poweroff
```

但时间可以减少

[参考|>](http://ubuntuhandbook.org/index.php/2019/12/slow-shutdown-stop-job-running/)

```bash
sudo vi /etc/systemd/system.conf
DefaultTimeoutStopSec=10s
systemctl daemon-reload
```

## awk

awk 字符串处理函数,split(s,a,fs)是我最需要的
https://www.jianshu.com/p/b259703e0951

如何把 '[' ']' 用awk 分开？
echo '[dfdf]' | awk -F'[[\\]]' '{print $2}'

注意： 第一个 '[' 不需要 '\['
如果是： echo '[dfdf]' | awk -F'[\[\\]]' '{print $2}'
会报错： awk: warning: escape sequence `\[' treated as plain `['
但是执行是正确的，warning 表示会自己净化成 [
而 ] 需要进行两次 \\,不然就会报错，而且执行结果也是错误的
echo '[dfdf]' | awk -F'[[\]]' '{print $2}'
awk: warning: escape sequence `\]' treated as plain `]'

如果是 . 也需要进行两次转义
echo  '[ 1316.299650] ' | awk -F '[[\\.]' '{print $2}'

## ruby

https://stackoverflow.com/questions/17096935/how-to-get-piped-input-to-ruby-e-on-command-line

## 以下是讲解得很好的命令使用

每天学习一个命令：netstat 查看本地监听端口
http://einverne.github.io/post/2017/01/netstat.html

每天学习一个命令：traceroute 查看路由信息
http://einverne.github.io/post/2017/06/traceroute.html

每天学习一个命令：iperf 测量带宽
http://einverne.github.io/post/2017/11/iperf.html

每天学习一个命令: mtr 查看路由网络连通性
http://einverne.github.io/post/2017/11/mtr-usage.html

每天学习一个命令：curl 命令行下载工具
http://einverne.github.io/post/2017/12/curl-usage.html

Linux 下显示网络流量
http://einverne.github.io/post/2018/02/linux-show-network-traffic.html

## 终端样式

[linux如何去掉目录背景颜色](https://blog.csdn.net/weixin_41010198/article/details/88816329)

```bash
echo "OTHER_WRITABLE 01;34" >> $HOME/.dir_colors
eval `dircolors $HOME/.dir_colors`
source ~/.bashrc
```

https://www.runoob.com/linux/linux-comm-dircolors.html

https://github.com/arcticicestudio/nord-dircolors

https://github.com/seebi/dircolors-solarized

## 终端.技巧

ctrl +　Ｋ 删除光标后面的字符 
ctrl + u 删除光标前面的字符
ctrl + y 把删除的内容粘贴
sudo　!! 上一命令加上sudo 执行

## 输出重定向

Shell重定向 ＆>file、2>&1、1>&2 、/dev/null的区别
https://blog.csdn.net/u011630575/article/details/52151995

## linux brew

安装
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

[CN安装](https://gitee.com/RubyKids/LinuxbrewCN)

```bash
bash -c "$(curl -fsSL https://gitee.com/RubyKids/LinuxbrewCN/raw/master/install.sh)"
```

[Homebrew / Linuxbrew 镜像使用帮助](https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/)

```bash
if [[ "$(uname -s)" == "Linux" ]]; then BREW_TYPE="linuxbrew"; else BREW_TYPE="homebrew"; fi
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/${BREW_TYPE}-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/${BREW_TYPE}-bottles"
```


## CPU 出现soft lockup的解决办法

https://blog.csdn.net/zgl07/article/details/46493421

```bash
# echo 30 > /proc/sys/kernel/watchdog_thresh 
sysctl -w kernel.watchdog_thresh=30
/etc/sysctl.conf
kernel.watchdog_thresh=30
```

## ubuntu 源

```1804
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse

```
原文链接：https://blog.csdn.net/xiangxianghehe/article/details/105688062

```
deb https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
```

## virtualBox iamges linux server

https://www.osboxes.org/

Disable Mouse Integration for VirtualBox: 
Run virtual machine go to menu Machine > Disable Mouse Integration or simply press Right CTRL + i to enable/disable mouse integration.
Fix Blankscreen issue: Go to Settings > Display > Sleep > Select “30 minutes”
Important! For VMware: After setting up, go to “Virtual Machine Settings” > under “Hardware” Tab > Select “Display” > Enable “Accelerate 3D graphics”
VMware Compatibility: Version 10+

BackBox
Username: osboxes
Password: osboxes.org
VB Guest Additions & VMware Tools: Installed
Keyboard Layout: US (Qwerty)
VMware Compatibility: Version 10+

##　ubuntu 添加开机启动ｓ

[Linux Ubuntu 20.04 —添加开机启动(服务/脚本)](https://www.cnblogs.com/Areas/p/13439000.html)

https://gist.github.com/mohamadaliakbari/1cb9400984094541581fff07143e1c9d

开机启动 networkd，好像kali不生效,kali见下面一节

```bash
echo '
[Match]
Name=eth*

[Network]
DHCP=ipv4
' | sudo tee -a /etc/systemd/network/20-dhcp.network
```

## kali 启动服务和网卡

[Kali Linux系统开启SSH服务教程](https://www.jianshu.com/p/9805a4f02d69)

```bash
# 开机重启:
update-rc.d ssh defaults
update-rc.d ssh enable
```

sudo vim /etc/network/interfaces

```bash
auto eth1
iface eth1 inet static
address 192.168.56.111
netmask 255.255.255.0
broadcast 192.168.56.255
network 192.168.56.0
gateway 192.168.56.1
```

## [linux top命令VIRT,RES,SHR,DATA的含义](https://javawind.net/p131)


