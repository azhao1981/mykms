# redis 安全运维

TODO:
写一个安全安装和配置redis的脚本
+ redis-docker: jmelloc adduser addgroup 等等
+ 配置 rename-command
+ auth 自动生成password https://nickjanetakis.com/blog/docker-tip-27-setting-a-password-on-redis-without-a-custom-config
+ sentinel 
+ docker模式

实战预演——Redis基于主从复制的RCE|4.0.11？
https://www.anquanke.com/post/id/234770

hiredis是官方支持的redis C客户端
Minimalistic C client for Redis >= 1.2
https://github.com/redis/hiredis

```bash
wget http://download.redis.io/releases/redis-6.2.1.tar.gz
wget http://download.redis.io/releases/redis-6.0.12.tar.gz
wget http://download.redis.io/releases/redis-5.0.12.tar.gz
wget http://download.redis.io/releases/redis-4.0.11.tar.gz
tar xzvf redis-4.0.11.tar.gz
cd redis-4.0.11
make

```

## docker
https://github.com/docker-library/redis
https://hub.docker.com/_/redis

```bash
docker pull redis:6.2.1
docker pull redis:6.2.1-alpine
docker pull redis:6.0.12
docker pull redis:6.0.12-alpine
docker pull redis:5.0.12
docker pull redis:5.0.12-alpine
docker pull redis:4.0.11
docker pull redis:4.0.11-alpine
docker pull alpine:3.13

docker run -it --name v6-redis -v /home/kali/tools:/redis  redis:6.0.12-alpine sh
docker cp v6-redis:/usr/local/bin/redis-server redis-server.6.0.12
docker cp $(docker create --rm redis:6.0.12):/usr/local/bin/redis-server redis-server.6.0.12

docker run -it --name v1-redis -v /home/kali/tools:/redis  alpine:3.13 sh
/redis/redis-server 不能运行
docker cp v1-redis:/usr/local/bin/redis-server redis-server.6.0.12
# 这个alpine的文件并不能在 ubuntu的系统中运行
```

## security

Redis 4.x 5.x漏洞手动复现
https://cloud.tencent.com/developer/article/1595056

linux – 如何编译Redis以便我可以在共享主机上传和运行它？
http://www.cocoachina.com/articles/402643

Redis主从复制getshell技巧
https://zhuanlan.zhihu.com/p/147371417

redis未授权
https://g.yuque.com/wildcat-rrka5/ri1fuk/nuinp9?language=en-us

Redis 4.x 5.xRCE复现
https://www.jianshu.com/p/c03e48199387

https://github.com/n0b0dyCN/RedisModules-ExecuteCommand
https://github.com/n0b0dyCN/redis-rogue-server
https://2018.zeronights.ru/wp-content/uploads/materials/15-redis-post-exploitation.pdf

## 关于在静态编译：失败,先不要浪费时间了

```bash
# 静态编译，好像没有用 ldd redis-server 还是有很多的库
make CFLAGS="-static" EXEEXT="-static" LDFLAGS="-I/usr/local/include/"
```

Redis Makefile注解
https://zhuanlan.zhihu.com/p/106178000

别人静态编译好的
https://github.com/Aldrian/redis-static
```bash
$ bash bin/linux/x64/redis-server
bin/linux/x64/redis-server: bin/linux/x64/redis-server: cannot execute binary file
# 好像也是有问题的
```
https://github.com/eugeneware/ffmpeg-static

## telent

telent ip port

很多时候 telnet 完就无法退出了，ctrl+c 有时也无法退出
后来找到了正确的命令 ctrl+] 然后在telnet 命令行输入 quit 就可以退出了