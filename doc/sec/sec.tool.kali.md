# kali

## metaexploit

https://github.com/rapid7/metasploit-framework
/usr/share/metasploit-framework/config/database.yml

## kali linux

## 教程

kali渗透测试笔记
https://zhuanlan.freebuf.com/column/index/?name=kali%E6%B8%97%E9%80%8F%E6%B5%8B%E8%AF%95%E7%AC%94%E8%AE%B0

https://github.com/Jack-Liang/kalitools
https://tools.kali.org/tools-listing

## docker

https://medium.com/@airman604/installing-docker-in-kali-linux-2017-1-fbaa4d1447fe

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get remove docker docker-engine docker.io
sudo apt-get install docker-ce

sudo docker run hello-world

sudo systemctl start docker

自动启动

sudo systemctl enable docker
sudo usermod -aG docker $USER

## docker 镜像

[kali linux 更换镜像源](https://www.cnblogs.com/yyxianren/p/10916140.html)

[Installing Docker in Kali Linux](https://medium.com/@airman604/installing-docker-in-kali-linux-2017-1-fbaa4d1447fe)

<https://www.daocloud.io/mirror#accelerator-doc>

<http://get.daocloud.io/>

curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f1361db2.m.daocloud.io

不支持安全，那就直接用 ubunut 或是 pull daocloud的images吧

# kali

## 安装 win10

## 安装 kali

google: 'download kali linux virtualbox'

https://www.offensive-security.com/kali-linux-vm-vmware-virtualbox-image-download/

**下载地址不要错**

## 安装 virtual box

virtualbox extension pack 安装失败 ERROR: 127

版本问题,解决: https://www.virtualbox.org/wiki/Downloads

**下载地址不要错**

对: https://www.virtualbox.org/ticket/18233

不对: https://blog.csdn.net/lsmsrc/article/details/89922903