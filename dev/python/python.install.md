# python 安装

## linux

建议通过 pyenv 安装

### 安装前准备
```bash
# 安装前准备 <https://www.lagou.com/lgeduarticle/36876.html>

yum install git readline readline-devel readline-static -y
yum install openssl openssl-devel openssl-static -y
yum install sqlite-devel -y
yum install bzip2-devel bzip2-libs -y
yum install libffi-devel -y
yum install gcc -y

# ubuntu
sudo apt-get update
sudo apt-get install git curl -y
sudo apt-get install build-essential python-dev python-setuptools python-pip python-smbus curl -y
sudo apt-get install libncursesw5-dev libgdbm-dev libc6-dev -y
sudo apt-get install zlib1g-dev libsqlite3-dev tk-dev -y
sudo apt-get install libssl-dev openssl -y
sudo apt-get install libffi-dev -y

# libffi-dev 这个很重要,不然有一些pip Install会报 _ctypes 错误, 如果已经安装,重新装 libffi-dev,然后重装一下 python
# https://stackoverflow.com/questions/27022373/python3-importerror-no-module-named-ctypes-when-using-value-from-module-mul
# https://blog.csdn.net/wang725/article/details/79905612
```

### pyenv

## pyenv 升级后 pip 会报: /usr/local/Cellar/pyenv/1.2.12/libexec/pyenv: No such file or directory

改成:
brew info pyenv
看下新版本
修改一下
/usr/local/Cellar/pyenv/1.2.14_1
/usr/local/Cellar/pyenv/1.2.14_1/libexec/pyenv

## pip 升级

python -m pip install --upgrade pip

## mac 安装 pip 阿里镜像

[参考:使用pyenv在mac上进行python多版本控制](http://achuan.me/2016/09/26/20160926使用pyenv在mac上进行python多版本控制/)

```bash
brew install pyenv
brew upgrade pyenv
pyenv install -l
pyenv install $v
```

.bashrc

```bash
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export  PYTHON_BUILD_MIRROR_URL="http://pyenv.qiniudn.com/pythons/"
```

### 安装指定版本

[Pyenv 的安装配置与国内镜像加速](https://www.mywaiting.com/weblogs/pyenv-install-for-virtualenv-and-accelerate-in-mainland-china/)

<http://mirrors.sohu.com/python/3.8.0/>

# 一键安装 pyenv + virtualenv

```bash
151.101.8.133   raw.githubusercontent.com
```
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

export ver=3.9.4
export ver=3.8.6
export ver=3.7.9
wget http://mirrors.sohu.com/python/$ver/Python-$ver.tar.xz -P ~/.pyenv/cache/; pyenv install $ver
pyenv install 3.8.6
# 手动下载
https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
cp Python-3.7.2.tar.xz ~/.pyenv/cache/
zlib not available
https://github.com/pyenv/pyenv/issues/530

CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install -v 3.5.6
```

安装 virtualenv

``` bash
git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
# bashrc
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
```

```bash
pyenv versions

pyenv global 3.8 # 设置全局的 Python => ~/.pyenv/version
pyenv local 2.7.3 # 生成 =>  ./.python-version

pyenv shell pypy-2.2.1
pyenv virtualenv 3.8.6 3.8

pyenv virtualenvs
pyenv versions

pyenv activate 2.7
pyenv activate 3.5

pyenv shell 3.5    # shell 使用哪个版本

pyenv deactivate
```

[阿里pip镜像](http://mirrors.aliyun.com/help/pypi)

```bash
# 在 ~/.pip/pip.conf 文件中添加或修改
[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
[install]
trusted-host=mirrors.aliyun.com
```
### 试装 gitsome

```bash
pip install gitsome
gitsome
```

[参考](http://blog.codylab.com/python-pyenv-management/)

[pysheeet](httaps://github.com/crazyguitar/pysheeet)

### jupyter

http://jupyter.org/

[JupyterLab](https://blog.jupyter.org/jupyterlab-is-ready-for-users-5a6f039b8906)

[Jupyter Notebook介绍、安装及使用教程](https://zhuanlan.zhihu.com/p/33105153)

```bash
pip3 install jupyter

brew install zeromq
brew install czmq --HEAD
gem install cztop iruby
iruby register --force

jupyter notebook
pip install jupyterlab
jupyter serverextension enable --py jupyterlab --sys-prefix
```

<https://github.com/jupyter/jupyter/wiki/Jupyter-kernels>
<https://github.com/SciRuby/iruby>


```bash
sudo apt install libtool libffi-dev ruby ruby-dev make
sudo apt install libzmq3-dev libczmq-dev

gem install ffi-rzmq
gem install iruby --pre
iruby register --force
```

[为 Jupyter Notebook 设置 Ruby Kernel](https://ruby-china.org/topics/38045)
<https://github.com/SpencerPark/IJava>
  <https://blog.frankel.ch/teaching-java-jupyter-notebooks/>
[在 docker 中运行 Jupyter notebook](https://blog.windrunner.me/programming/jupyter-docker.html)

Tips, Tricks, Hacks, and Magic: How to Effortlessly Optimize Your Jupyter Notebook
<https://towardsdatascience.com/how-to-effortlessly-optimize-jupyter-notebooks-e864162a06ee>


```bash
# debian9.163
deb http://mirrors.163.com/debian/ stretch main non-free contrib
deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib
deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib
deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib
deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib
```


## windows

however the ssl module in Python is not available
https://blog.csdn.net/S_o_l_o_n/article/details/89457510
       在下载安装anaconda时，最好把这三个目录都添加到环境变量的path中：C:\anaconda，C:\anaconda\Scripts，C:\anaconda\Library\bin。（要注意，anaconda之前的路径因个人安装的路径而异）
如果自己安装了python,又安装了conda,而且把scripts加path中，也会出现这个问题，直接删除掉 C:\anaconda\Scripts 即可

拒绝访问