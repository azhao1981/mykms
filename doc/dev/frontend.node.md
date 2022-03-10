
# nodejs

## 系统安装

为什么是系统安装，不是用NVM？

很多的linux版本最高版本就是 8.10.x，apt就不再更新了，最近更新rails，造成了
  01 Autoprefixer doesn’t support Node v8.10.0. Update it.
的报错，有一些npm包已经不支持老版本的nodejs了，需要更新。

如果安装了 nvm，但 cap 并不会使用nvm，根据 https://github.com/koenpunt/capistrano-nvm ，加 gem 'capistrano-nvm'

发现还是不行,还是升级node为王道。

下载：https://nodejs.org/en/download/

阿里镜像：https://npm.taobao.org/mirrors/node/v16.13.0/

```bash
# 先删除老版本
nvm ls
nvm use system
node -v
which node
# => /usr/bin/node
sudo apt remove nodejs
# 下载
wget https://nodejs.org/dist/v12.19.0/node-v12.19.0-linux-x64.tar.xz
wget https://npm.taobao.org/mirrors/node/v16.13.0/node-v16.13.0-linux-x64.tar.xz

# 安装xz
sudo apt-get install xz-utils
# 安装
sudo tar --strip-components 1 -xf node-v12.19.0-linux-x64.tar.xz -C /usr/local
sudo tar --strip-components 1 -xf node-v16.13.0-linux-x64.tar.xz -C /usr/local
# 验证
node -v
# => v12.19.0
which node
# => /usr/local/bin/node
```

注：

这个命令会把 node 可执行文件安装到当前目录的 bin 下，但还会有 include/lib 等目录

```bash
tar --strip-components 1 -xf node-v12.19.0-linux-x64.tar.xz
```

所以加 `-C /usr/local` 会放到 `/usr/local` 目录下

注意：系统安装由于安装到  /usr/local 下，所以 -g 安装 npm 时，应该使用 sudo

## npm mirror 镜像

参考： http://npm.taobao.org

```bash
npm config get registry
npm config get disturl
npm config set disturl https://npm.taobao.org/dist
npm config set registry=http://registry.npm.taobao.org
# 执行的结果可以看
cat ~/.npmrc
disturl=https://npm.taobao.org/dist
registry=http://registry.npm.taobao.org/

npm config delete registry
npm config delete disturl

# 更新最新
sudo npm install -g npm
```

参考：https://blog.csdn.net/qq_42403503/article/details/108479464

## yarn + mirror

```bash
# 安装 yarn，请不要用 apt install yarn
npm install -g yarn
# 如果是系统安装，需要 sudo
sudo npm install -g yarn    

yarn config set registry https://registry.npm.taobao.org -g
```

## windows ERROR: node-gyp rebuild

```bash
npm install -g windows-build-tools
```

大多是 node-sass 版本过低，换成最新的 7.0.1就可以了

https://www.jianshu.com/p/8fad9c7d8da6
windows平台安装node-sass失败的解决办法
注意需要使用管理员权限打开powershell（搜索powershell，右键）

```bash
npm install -g node-gyp
npm install --global --production windows-build-tools
```

https://www.npmjs.com/package/node-sass
这个已经 7.0.1
Windows下安装前端项目，node-sass报错
https://juejin.cn/post/6844904025003933703

https://www.python.org/downloads/release/python-2718/