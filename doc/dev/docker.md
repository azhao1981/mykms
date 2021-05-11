# docker

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