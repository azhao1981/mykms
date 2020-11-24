# 前端

[配色](https://dev.to/sabrinasuarezarrieta/best-sites-to-create-your-website-colour-palette-373p)
> https://colorhunt.co/
> https://coolors.co/
> https://mycolor.space/

[对微前端的11个错误认识](https://www.infoq.cn/article/eSR6Ykh2lfhzeRpKWijj)

## vscode

https://my.oschina.net/SZQing/blog/4336306

https://github.com/imcodingideas/vscode-fundamentals
https://medium.com/@thoamsy/%E4%BD%BF%E7%94%A8-vs-code-%E6%90%AD%E5%BB%BA%E4%B8%80%E4%B8%AA%E5%BE%88%E7%88%BD%E7%9A%84%E5%89%8D%E7%AB%AF%E7%8E%AF%E5%A2%83-2d393ba5cc45
https://blog.csdn.net/qq_32842925/article/details/88846723
https://zhuanlan.zhihu.com/p/57389333
https://my.oschina.net/SZQing/blog/4336306

## nodejs

### 系统安装

很多的linux版本最高版本就是 8.10.x，apt就不再更新了，最近更新rails，造成了
  01 Autoprefixer doesn’t support Node v8.10.0. Update it.
的报错，有一些npm包已经不支持老版本的nodejs了，需要更新。

我在服务器上安装了 nvm，但cap并不会使用nvm，根据 https://github.com/koenpunt/capistrano-nvm ，加 gem 'capistrano-nvm'

发现还是不行,还是升级node为王道。

参考： https://phoenixnap.com/kb/update-node-js-version

下载：https://nodejs.org/en/download/

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
# 安装xz
sudo apt-get install xz-utils
# 安装
sudo tar --strip-components 1 -xf node-v12.19.0-linux-x64.tar.xz -C /usr/local
# 验证
node -v
# => v12.19.0
which node
# => /usr/local/bin/node
```

注：

这个命令会把node 可执行文件安装到当前目录的bin下，但还会有include/lib等目录

```bash
tar --strip-components 1 -xf node-v12.19.0-linux-x64.tar.xz
```

所以加 -C /usr/local 会放到 /usr/local 目录下
