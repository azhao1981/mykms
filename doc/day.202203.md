# 202203

## 20220330
http://razil.cc/post/2019/04/go_gin_middleware_request_body/
```golang
var bodyBytes []byte // 我们需要的body内容

// 从原有Request.Body读取
bodyBytes, err := ioutil.ReadAll(c.Request.Body)
if err != nil {
	return 0, nil, fmt.Errorf("Invalid request body")
}

// 新建缓冲区并替换原有Request.body
c.Request.Body = ioutil.NopCloser(bytes.NewBuffer(bodyBytes))

// 当前函数可以使用body内容
_ := bodyBytes
``
## 20220329

https://github.com/iamshuaidi/algo-basic
https://github.com/yanfeizhang/coder-kung-fu

基于 etcd 实现分布式锁
https://segmentfault.com/a/1190000021603215

再有人问你分布式锁，这篇文章扔给他
https://juejin.cn/post/6844903688088059912

https://learn.lianglianglee.com/专栏/分布式中间件实践之路（完）/10 基于 Etcd 的分布式锁实现原理及方案.md

https://learn.lianglianglee.com/

## 20220328

https://boilingfrog.github.io/2021/09/10/etcd中的存储实现/
https://www.huweihuang.com/kubernetes-notes/etcd/etcdctl-v3.html
https://github.com/bitnami/bitnami-docker-etcd
etcd数据迁移实战
https://blog.csdn.net/IT_DREAM_ER/article/details/108855219

官方文档
https://github.com/whmzsu/etcd/blob/master/documentation/index.md

！！TTL 不是用来表示过期结束的，而是用来控制租约刷新频率的
https://skyao.gitbooks.io/learning-etcd3/content/documentation/dev-guide/interacting_v3.html

https://www.bookstack.cn/read/For-learning-Go-Tutorial/spilt.3.src-chapter14-01.0.md
获取 key 的值，包含更详细的元数据  --- 好像不行，版本不对？
./etcdctl -o extended get /message Key: /message Created-Index: 1073 Modified-Index: 1073 TTL: 0 Index: 1073

```yml
etcd:
    image: bitnami/etcd:3.5.2
    environment:
      - ALLOW_NONE_AUTHENTICATION=yes
    volumes:
      - etcd_data:/bitnami/etcd
    ports:
      - 2379:2379
      - 2380:2380
```
```bash
docker cp docker-compose_etcd_1:/opt/bitnami/etcd/bin/etcdctl ./

etcdctl set    /path/newkey some-data
export ETCD_ENDPOINTS=http://192.168.56.1:2379

etcdctl --endpoints=${ETCD_ENDPOINTS} get / --prefix --keys-only
ETCDCTL_API=3 etcdctl --endpoints=${ETCD_ENDPOINTS} put foo bar
ETCDCTL_API=3 etcdctl  put foo bar

/ads/scheduler/task/333/694d7fce7bba292f
xh http://192.168.56.1:2379/v2/keys/ads/scheduler/task/333/694d7fce7bba292f?recursive=false&wait=true&stream=true


ETCDCTL_API=3 etcdctl --endpoints=${ETCD_ENDPOINTS} -o extended get "/" --prefix

## ERROR
authentication handshake failed

root@31e6422c8769:/# etcdctl --endpoints="172.17.0.2:2379" --cacert=/etc/etcd/certs/ca.pem --debug  get foo
# https://dyrnq.com/install-etcd-by-hand-client-transport-security/
docker exec -it docker-compose_etcd_1 bash
etcdctl get foo --prefix --keys-only
etcdctl get / --prefix --keys-only

etcdctl  put /foo bar

etcdctl --endpoints=${ETCD_ENDPOINTS} put abc "--prefix --keys-only"
ETCDCTL_API=3 etcdctl --endpoints=$ETCD_ENDPOINTS member list
```


https://etcd.io/docs/v3.3/dev-guide/api_grpc_gateway/
```bash
curl -L http://127.0.0.1:2379/version

# https://xujiyou.work/%E4%BA%91%E5%8E%9F%E7%94%9F/Etcd/Metrics.html#%E6%9C%8D%E5%8A%A1%E7%AB%AF%E6%8C%87%E6%A0%87
./xh   http://172.16.83.104:2379/metrics

# https://www.compose.com/articles/how-to-keep-your-etcd-lean-and-mean/
ETCDCTL_API=3 etcdctl --endpoints='http://172.16.83.104:2379' endpoint status -w table
ETCDCTL_API=3 etcdctl --endpoints='http://172.16.83.104:2379' member list -w table
ETCDCTL_API=3 etcdctl --endpoints='http://172.16.83.104:2379' endpoint status -w table
ETCDCTL_API=3 etcdctl --endpoints='http://172.16.83.104:2379' get "/ads/scheduler/task/32440"

```

https://www.cnblogs.com/davygeek/p/8524477.html
ETCD数据空间压缩清理

```bash
ETCDCTL_API=3  etcdctl --endpoints=http://172.16.83.104:2379 alarm list
rev=$(ETCDCTL_API=3 etcdctl --endpoints=http://172.16.83.104:2379 endpoint status --write-out="json" | egrep -o '"revision":[0-9]*' | egrep -o '[0-9].*')
# 压缩掉所有旧版本
etcdctl --endpoints=http://127.0.0.1:2379 compact $rev
# 整理多余的空间
etcdctl --endpoints=http://127.0.0.1:2379 defrag
# 取消告警信息
etcdctl --endpoints=http://127.0.0.1:2379 alarm disarm


/usr/local/bin/etcd \
  --auto-compaction-retention=1m \
  --snapshot-count=5000 \
  --quota-backend-bytes=8589934592 \
  --data-dir=/etcd-data --name ${THIS_NAME} \
  --initial-advertise-peer-urls http://${THIS_IP}:${THIS_2380_PORT} --listen-peer-urls http://0.0.0.0:2380 \
  --advertise-client-urls http://${THIS_IP}:${THIS_2379_PORT} --listen-client-urls http://0.0.0.0:2379 \
  --initial-cluster ${CLUSTER} \
  --initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${TOKEN}
```

Raft 在 etcd 中的实现
https://blog.betacat.io/post/raft-implementation-in-etcd/

## 20220321
https://github.com/bytedance/godlp
sensitive information protection toolkit
正式开源！字节安全团队自研敏感信息保护方案 GoDLP
正式开源！字节安全团队自研敏感信息保护方案 GoDLP
https://www.toutiao.com/article/7071107679506170368/

## 20220318
9、websocket：Go 的 websocket 三方库。看看它和标准库的对比，你就知道为什么它会出现在本期月刊中了
https://github.com/gorilla/websocket
基于 Go 语言实现的在线客服系统，采用 Gin+MySQL+JWT+WebSocket 等技术栈实现
https://github.com/taoshihan1991/go-fly
## 20220317

https://asmcn.icopy.site/awesome/awesome-go/
https://github.com/usk81/generic
flexible data type for Go
https://github.com/chenquan/go-pkg
A go toolkit.
https://github.com/rbrahul/gofp
A super simple Lodash like utility library with essential functions that empowers the development in Go

我的超迷你机械臂机器人项目。

https://github.com/peng-zhihui/Dummy-Robot

https://github.com/MichaelCade/90DaysOfDevOps

https://github.com/Developer-Y/cs-video-courses

https://github.com/aws-samples/aws-security-reference-architecture-examples

https://github.com/AlexisAhmed/CVE-2022-0847-DirtyPipe-Exploits

大厂克隆
https://github.com/GorvGoyl/Clone-Wars

低代码
https://github.com/YaoApp/yao

auth
https://github.com/oauth2-proxy/oauth2-proxy
https://github.com/casbin/casbin
An authorization library that supports access control models like ACL, RBAC, ABAC in Golang

https://github.com/quii/learn-go-with-tests
https://github.com/xinliangnote/go-gin-api
基于 Gin 进行模块化设计的 API 框架，封装了常用功能，使用简单，致力于进行快速的业务研发。
比如，支持 cors 跨域、
jwt 签名验证、
zap 日志收集、
panic 异常捕获、
trace 链路追踪、
prometheus 监控指标、
swagger 文档生成、
viper 配置文件解析、
gorm 数据库组件、
gormgen 代码生成工具、
graphql 查询语言、
errno 统一定义错误码、
gRPC 的使用、
cron 定时任务 等等。

https://github.com/go-spring/go-spring
基于 IoC 的 Go 后端一站式开发框架 ( All-in-One Development Framework on IoC for Go ) 🚀

https://github.com/liamg/traitor
SEC Automatic Linux privesc via exploitation of low-hanging fruit e.g. gtfobins, pwnkit, dirty pipe, +w docker.sock

https://github.com/elsewhencode/project-guidelines
A set of best practices for JavaScript projects

https://github.com/alibaba/x-render
阿里 - 很易用的中后台「表单 / 表格 / 图表」解决方案

https://draveness.me/golang/docs/part3-runtime/ch06-concurrency/golang-context/

github.com/theodesp/go-heaps/pairing/

[配对堆](https://oi-wiki.org/ds/pairing-heap/)

算法可视化

https://visualgo.net/zh
https://visualgo.net/zh/heap?slide=1

前端学数据结构 - 堆（Heap）

https://boycgit.github.io/ss-heap/
https://github.com/Technopark95/data-structure-visualization
https://www.cs.usfca.edu/~galles/visualization/Algorithms.html