# docker

## install

```bash
curl -sSL https://get.daocloud.io/docker | sh

To run Docker as a non-privileged user, consider setting up the
Docker daemon in rootless mode for your user:

    dockerd-rootless-setuptool.sh install

curl -L https://get.daocloud.io/docker/compose/releases/download/v2.0.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
```
## rocky centos

https://yeasy.gitbook.io/docker_practice/install/centos

sudo yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io
```bash
# /etc/firewalld/firewalld.conf
# FirewallBackend=nftables
FirewallBackend=iptables
# or
$ firewall-cmd --permanent --zone=trusted --add-interface=docker0
$ firewall-cmd --reload

$ sudo systemctl enable docker
$ sudo systemctl start docker
```

## cn mirror

https://www.daocloud.io/mirror
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f1361db2.m.daocloud.io
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s https://docker.mirrors.ustc.edu.cn/
/etc/docker/daemon.json
```json
{
  "registry-mirrors": ["https://docker.mirrors.ustc.edu.cn/"]
}
```

镜像加速器
https://yeasy.gitbook.io/docker_practice/install/mirror

可用性测试结果：
https://github.com/docker-practice/docker-registry-cn-mirror-test/actions

## tips

rm -rf /var/lib/apt/lists/*

5 款非常好用的开源 Docker 工具，get一波～
https://zhuanlan.zhihu.com/p/159017678

sudo docker history ubuntu.cn:20.04 

三个技巧帮助Docker镜像瘦身
https://blog.csdn.net/weixin_49163826/article/details/107732323

### 修改容器ip映射

[Docker容器修改端口映射](https://zhuanlan.zhihu.com/p/94949253)

```bash
docker inspect 容器id | grep Id
# b7e29cfb28666247b0c4e8fddc62e5c793b67446b0646d5094d650ac57ff5ed1
cd /var/lib/docker/containers/上面的id
docker stop 容器id
# 修改： hostconfig.json，如果只是修改转发端口，只改这个就可以了,这个文件用来修改 -p port:port 的
# 修改： config.v2.json，如果需要在里面添加新的expose port
# 必须重启
service docker restart
```

### 清理空间

TIPS：如果你在容器里增加了大量的文件，千万不要使用 `docker commit b7e29cfb2866 xxx`不然空间占用很大

[如何清理Docker占用的磁盘空间?](https://blog.fundebug.com/2018/01/10/how-to-clean-docker-disk/)

docker system df
docker system prune
docker system prune -a
docker system prune -a && docker volume prune.

https://hub.docker.com/r/clockworksoul/docker-gc-cron/ 4.5k

人工清理
docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
docker volume rm $(docker volume ls -qf dangling=true)

```yaml
nginx:
    image: nginx:1.12.1
    restart: always
    logging:
        driver: "json-file"
        options:
            max-size: "5g"
```

/var/lib/docker/overlay2 占用很大，清理Docker占用的磁盘空间，迁移 /var/lib/docker 目录
https://blog.csdn.net/weixin_32820767/article/details/81196250

https://blog.csdn.net/qq_20407719/article/details/95991610?utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromMachineLearnPai2%7Edefault-1.control&dist_request_id=1332048.10115.16194186908879363&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromMachineLearnPai2%7Edefault-1.control
docker清理大杀器/docker的overlay文件占用磁盘很大？？
portainer/portainer
## images

### postgresql

https://hub.docker.com/_/postgres

sudo docker pull postgres:13.2 
sudo docker pull postgres:11.11

```yaml
  postgres:
    image: postgres:13.2 
    restart: always
    expose:
      - 5432
    ports:
      - 5432:5432
    environment:
      - POSTGRES_PASSWORD=eNRN6Dr3xiu6ebqxq9r1
      - TZ=Asia/Shanghai
    volumes:
      - postgres-data:/var/lib/postgresql/data
volumes:
  postgres-data:
```

## mysql

```bash
# 8.0.26, 8.0, 8, latest
docker pull mysql:8.0.26
docker pull redis:4.0.14-alpine
```

```yml

```

## k8s.gcr.io

例如 k8s.gcr.io/coredns:1.6.7 镜像可以用 

`registry.cn-hangzhou.aliyuncs.com/google_containers/coredns:1.6.7` 代替。

一般情况下有如下对应关系：

```bash
docker pull k8s.gcr.io/xxx
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/xxx
```