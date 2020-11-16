# ai.dev

## 环境搭建

微软开源 TensorFlow-DirectML，为 WSL2 提供 GPU 支持
https://www.oschina.net/news/118548/microsoft-open-sources-tensorflow-directml

手把手教学！Win10深度学习GPU开发环境搭建步骤 | 教程
https://itworld520.com/2020/04/13/%E6%89%8B%E6%8A%8A%E6%89%8B%E6%95%99%E5%AD%A6%EF%BC%81win10%E6%B7%B1%E5%BA%A6%E5%AD%A6%E4%B9%A0gpu%E5%BC%80%E5%8F%91%E7%8E%AF%E5%A2%83%E6%90%AD%E5%BB%BA%E6%AD%A5%E9%AA%A4-%E6%95%99%E7%A8%8B/

Windows深度学习环境搭建的教程以及一些踩雷经验（CUDA+Anaconda3+cuDNN+Pytorch+Pycharm设置）
https://blog.csdn.net/qq_39466126/article/details/103971768

mac 黑苹果没有2080ti的驱动

linux最终使用Deepin

+ 安装ssh
```bash
sudo apt install openssh-server 
sudo service ssh start
cd ~
vim authorized_keys
chmod 600 authorized_keys
```
+ 禁用
重启之后,这里要尤其注意，安装显卡驱动要先切换到文字界面，
(按Ctrl+Alt+F1~F6).所以，启动电脑后，先进入文字界面。 
然后，首先输入命令 sudo service lightdm stop

先禁用 nouveau，这是 Linux 自带的 N卡驱动

[Ubuntu 16.04 禁用 nouveau 安装 nvidia显卡驱动](https://blog.csdn.net/u012442845/article/details/78855573)

[Deepin安装最新显卡RTX2080Ti及CUDA10.1](https://blog.csdn.net/wf19930209/article/details/95772476)

lsmod | grep nouveau
sudo vim /etc/modprobe.d/blacklist.conf

```bash
blacklist nouveau
options nouveau modeset=0
```

```bash
sudo update-initramfs -u
# 重启
sudo reboot
# ctrl alt F2 进命令行，关闭x-server
sudo service lightdm stop
sudo telinit 3
sudo bash NVIDIA-Linux-x86_64-450.66.run
sudo update-initramfs -u
sudo reboot
sudo lspci -vnn  | grep 2080
sudo apt-get install mesa-utils
glxinfo

# https://askubuntu.com/questions/28033/how-to-check-the-information-of-current-installed-video-drivers

sudo bash cuda_11.0.3_450.51.06_linux.run 
```

+ 下载 2080ti 驱动，中文下载而有问题
https://www.nvidia.com/en-us/geforce/drivers/

error 安装时提示
pkg-config libglvnd
--glvnd-egl-config-path
https://zoomadmin.com/HowToInstall/UbuntuPackage/libglvnd-dev
sudo apt-get install -y libglvnd-dev

```
chmod +x NVIDIA-Linux-x86_64–410.57.run
sudo lspci | grep -i nvidia
sudo ./NVIDIA-Linux-x86_64–410.57.run --no-x-check
nvidia-settings
nvidia-smi
```

+ 安装 cuda

下载
https://developer.nvidia.com/cuda-downloads
wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda_11.0.3_450.51.06_linux.run

确认显卡
sudo lspci | grep -i nvidia

```.bashrc
export PATH=/usr/local/cuda-11.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64:$LD_LIBRARY_PATH
```
    sudo <CudaInstaller>.run --silent --driver
check
nvcc -V

g++
sudo apt-get install build-essential g++ -y

验证

```bash
cd ~/NVIDIA_CUDA-10.1_Samples/1_Utilities/deviceQuery
make
./deviceQuery
```

如下出现PASS代表成功。
deviceQuery, CUDA Driver = CUDART, CUDA Driver Version = 11.0, CUDA Runtime Version = 11.0, NumDevs = 1 Result = PASS

+ 安装 cuDNN
  
Ubuntu 18.04安装CUDA和cuDNN
https://zhuanlan.zhihu.com/p/72298520
https://developer.nvidia.com/rdp/cudnn-archive
Ubuntu16.04下CUDA、CUDNN离线安装（全版本通用法），精准解释，实测一次成功！
https://blog.csdn.net/weixin_42310154/article/details/107891367

+ python

dev\python\python.install.md

+ tensorflow
+ Pytorch


[lspci](https://blog.csdn.net/cclethe/article/details/103021112)

[Linux安装CUDA的正确姿势](https://blog.csdn.net/wf19930209/article/details/81879514)

<https://medium.com/better-programming/how-to-install-nvidia-drivers-and-cuda-10-0-for-rtx-2080-ti-gpu-on-ubuntu-16-04-18-04-ce32e4edf1c0>
s
<https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html>


https://blog.csdn.net/langren1353464539/article/details/87987622
Deepin 15.9 下安装Nvidia驱动 RTX 2080显卡
ubuntu16.04安装NVIDIA显卡驱动
https://www.jianshu.com/p/b313625fbe61

Deepin安装最新显卡RTX2080Ti及CUDA10.1
https://blog.csdn.net/wf19930209/article/details/95772476

driver2/dev/2/ 是20.04的驱动
先按 cuda的装

wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda_11.0.3_450.51.06_linux.run
~~~~
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda-repo-ubuntu2004-11-0-local_11.0.3-450.51.06-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-11-0-local_11.0.3-450.51.06-1_amd64.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-0-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda

https://ivanzz1001.github.io/records/post/linuxops/2018/01/23/linux-nvidia
lspci | grep VGA 
lspci -v -s 01:00.0
// 查看显卡相关的驱动信息(列出已载入系统的模块)

lsmod | grep nvidia

//探测有没有装载相应的驱动程序(如果报错，则没有装载）
# modprobe -v nvidia-uvm

# sudo vim /etc/modprobe.d/blacklist.conf    //修改文件属性

//向blacklist.conf文件中添加如下
blacklist vga16fb
blacklist nouveau
blacklist rivafb
blacklist rivatv
blacklist nvidiafb
sudo apt install gcc g++ make

# sudo init 3
# sudo rm -r /tmp/.X* 
# sudo service lightdm stop

//再安装驱动程序
# ./NVIDIA-Linux-x86_64-450.66.run --no-x-check --no-nouveau-check --no-opengl-files

// 重启图形环境
# sudo service lightdm start

https://xungejiang.com/2019/10/08/ubuntu-gpu-driver/
sudo update-initramfs -u

sudo bash ./cuda_11.0.3_450.51.06_linux.run --silent --toolkit --toolkitpath=/opt/cuda11.0 --defaultroot=/opt/cuda11.0 --samples --samplespath=$HOME/
