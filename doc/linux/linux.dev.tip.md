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