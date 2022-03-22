# README - Golang

| [go_get_proxy](./go_get_proxy.md) | [beego](beego.md) | 
[ip](ip.md) | [常见错误](golang.faq.md) |
 [code.tips](golang.code.tips.md) |

## awesome

|
[中文](https://github.com/hackstoic/golang-open-source-projects) |
[avelino](https://github.com/avelino/awesome-go) |
[gostor](https://github.com/gostor/awesome-go-storage) |
[uhub](https://github.com/uhub/awesome-go) |
[learn-go-with-tests](https://studygolang.gitbook.io/learn-go-with-tests/) |

## 安装

https://golang.org/doc/install

```bash
sudo su
wget https://studygolang.com/dl/golang/go1.17.5.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.5.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee -a /etc/profile
# check
go version
go env|grep GOPATH
# 国内环境加镜像代理
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct
go env | grep proxy
```

## gopls

go get -v golang.org/x/tools/cmd/gopls
用 go 的大家, gopls 有办法不开代理来用吗?
https://www.v2ex.com/t/602710
解决gopls问题
https://blog.csdn.net/Dreamfine/article/details/89676077
在 VS Code 中使用 gopls
https://studygolang.com/articles/23290?fr=sidebar
手动安装
https://github.com/golang/tools/blob/master/gopls/doc/user.md

## golang.org/x

go get -u golang.org/x/tools/gopls
报错
go install golang.org/x/tools/cmd/gopls
ls $GOPATH/bin
没有问题

https://github.com/goproxy/goproxy.cn/blob/master/README.zh-CN.md
go env -w GOPROXY=https://goproxy.cn,direct
go env -w GOPROXY=https://goproxy.cn
好像没有用?
只有 go build 才有用?

https://godoc.org/-/subrepo
golang.org/x/blog — the content and server program for blog.golang.org.
golang.org/x/crypto — additional cryptography packages.
golang.org/x/exp — experimental code (handle with care).
golang.org/x/image — additional imaging packages.
golang.org/x/mobile — libraries and build tools for Go on Android.
golang.org/x/net — additional networking packages.
golang.org/x/sys — for low-level interactions with the operating system.
golang.org/x/talks — the content and server program for talks.golang.org.
golang.org/x/text — packages for working with text.
golang.org/x/tools — godoc, vet, cover, and other tools.

git clone --depth=1 https://github.com/golang/blog.git
git clone --depth=1 https://github.com/golang/crypto.git
git clone --depth=1 https://github.com/golang/exp.git
git clone --depth=1 https://github.com/golang/image.git
git clone --depth=1 https://github.com/golang/mobile.git
git clone --depth=1 https://github.com/golang/net.git
git clone --depth=1 https://github.com/golang/talks.git
git clone --depth=1 https://github.com/golang/text.git

git clone --depth=1 https://github.com/golang/sys.git
git clone --depth=1 https://github.com/golang/tools.git

[git 设置和取消代理](https://gist.github.com/laispace/666dd7b27e9116faece6)
git config --global http.proxy 'socks5://127.0.0.1:1081'
git config --global https.proxy 'socks5://127.0.0.1:1081'
git config --global --unset http.proxy
git config --global --unset https.proxy

[解决go get无法下载被墙的包](https://studygolang.com/articles/18629)
1、使用gopm代替go下载


golang.org/x一键安装脚本
https://segmentfault.com/a/1190000016310831
Golang 项目被墙包的获取 (go.mod.replace)
https://g2ex.top/2018/05/25/go-dep-tips/

## web框架对比

[最好的6个Go语言Web框架](https://blog.csdn.net/dev_csdn/article/details/78740990)

[go语言web框架比较：gin vs iris vs echo](https://segmentfault.com/a/1190000013394345)

## book

<https://github.com/a8m/go-lang-cheat-sheet>

<https://github.com/enocom/gopher-reading-list> 很好的一个列表,可以翻译一下

[深入CGO编程](https://mp.weixin.qq.com/s/Pv1bRtWA6idmootKw7EO-Q)

[grep 一类的工具](https://github.com/arsham/blush)

`goenv global 1.10.1 && go get github.com/arsham/blush`

## TODO

### 好用的开源软件/包

- [gotty 把命令当成网页](https://github.com/yudai/gotty)
- [codetainer 网页写代码](https://github.com/codetainerapp/codetainer)
- [pholcus 全功能爬虫](https://github.com/henrylee2cn/pholcus)
- [wukong 悟空全文搜索引擎](https://github.com/huichen/wukong)
- [hound 快速代码搜索/sublime](https://github.com/etsy/hound)
- [shortme 二维码及短域名](https://github.com/andyxning/shortme)
- [goim 轻量级IM/kafka](https://github.com/Terry-Mao/goim)
- [看起来不错的命令行工具](https://github.com/ericfreese/rat)
- [tooling工具集合](https://github.com/campoy/go-tooling-workshop)
- [gitea](https://github.com/go-gitea/gitea)
- [gogs](https://github.com/gogits/gogs)
- [like railduck?](https://github.com/Caiyeon/goldfish)
- [goderive生成代码用的](https://github.com/awalterschulze/goderive)
- [远程配置工具(like ansible)](https://github.com/pressly/sup)
- [滴滴的json解包](https://github.com/json-iterator/go)
- [图片处理服务](https://github.com/DarthSim/imgproxy)
- [支持中文分词搜索](https://github.com/go-ego/riot/)
- [百度rpc](https://github.com/brpc/brpc)
 - 用不少好用的知识,如 [雪崩](https://github.com/brpc/brpc/blob/master/docs/cn/avalanche.md)
- [kubernetes](https://github.com/kubernetes/kubernetes) [doc](/doc/docker/kubernete.md)
 - <https://github.com/kubernetes/minikube>
- [faas](https://github.com/openfaas/faas)
- [prometheus](https://github.com/prometheus/prometheus)
 - [Prometheus 实战](https://songjiayang.gitbooks.io/prometheus/content/introduction/)
- [XMPP](https://github.com/ortuman/jackal)
- [数据提取罗](https://github.com/sirkon/ldetool)
- [测试框架]
 - https://github.com/matryer/is
 - https://github.com/stretchr/testify/assert
- [OAuth2 server](https://github.com/ory/hydra)

## 好资料

- [2017golang好文章](http://colobu.com/2017/12/28/top-golang-articles-of-2017/)
- [只用200行Go代码写一个自己的区块链](http://colobu.com/2018/02/05/code-your-own-blockchain-in-less-than-200-lines-of-go/)
- [go-addressable](http://colobu.com/2018/02/27/go-addressable/)
- [go.code建议](https://github.com/cristaloleg/go-advices)
- [a book focusing on Go syntax and semantics](https://go101.org)
 - https://github.com/go101/go101
- [两个http问题](http://colobu.com/2018/03/08/two-issues-in-go-development/) 超时和http.Get
- [Debugging-Go-Code-with-LLDB](http://colobu.com/2018/03/12/Debugging-Go-Code-with-LLDB/)
- [channel-patterns](http://colobu.com/2018/03/26/channel-patterns/)
- [TOP web框架对比 ](https://blog.usejournal.com/top-6-web-frameworks-for-go-as-of-2017-23270e059c4b)

### testing

- [测试框架]
 - https://github.com/matryer/is
 - https://github.com/stretchr/testify/assert

5 Advanced Go Testing Techniques
https://hackernoon.com/5-advanced-go-testing-techniques-7199b686b6c1
Go Best Practices — Testing
https://medium.com/@sebdah/go-best-practices-testing-3448165a0e18
Go advanced testing tips & tricks
https://medium.com/@povilasve/go-advanced-tips-tricks-a872503ac859
Testing in Go
https://github.com/codeship/go-best-practices/tree/master/testing

覆盖率:
go test -cover

vs Code:
go Toggle test Coverage in Current package

<https://maiyang.me/post/2018-11-14-go-test/>

[Golang测试用例的困境与最佳实践](https://jingwei.link/2018/06/23/golang-testcase-best-practices.html)
    + https://github.com/prashantv/gostub
    + https://github.com/jaegertracing/jaeger

### 最佳实践

https://github.com/llitfkitfk/go-best-practice
https://sanyuesha.com/2018/12/26/go-project-best-practice/
https://studygolang.com/articles/14

### github repo

[GoDS (Go Data Structures)/数据结构](https://github.com/emirpasic/gods)
[golang worker pool ,线程池 , 工作池](https://github.com/xxjwxc/gowp)

### 日志

os.Stderr 是无缓冲，每个输出都会立即flush，Stdout是行缓冲的，要等到缓冲满了才flush, 前者更符合作为日志的需要，不然你程序执行过程中core了，缓冲里的遗言可能就丢了，而丢掉的往往是最接近出问题的地方的。

### 高性能相关

- [Goroutine并发调度模型深度解析之手撸一个协程池/done](http://blog.taohuawu.club/article/goroutine-pool)
    - [高性能的协程池](https://github.com/panjf2000/ants)
- [性能优化实战：百万级WebSockets和Go语言](https://segmentfault.com/a/1190000011162605)
 - [bufio代码详解](https://www.cnblogs.com/golove/p/3282667.html)
 - [Tiny WebSocket library for Go](github.com/gobwas/ws)
 - Zero-copy upgrade 零拷贝升级
 - No intermediate allocations during I/O IO 不直接马上分配
 - Low-level API which allows to build your own logic of packet handling and buffers reuse
 - High-level wrappers and helpers around API in wsutil package, which allow to start fast without digging the protocol internals
 - https://github.com/gorilla/websocket
 - https://www.jianshu.com/p/eebf44c1d6db
 - [WebSocket实时聊天室](https://blog.csdn.net/wangshubo1989/article/details/78250790)
 - [七种WebSocket框架的性能比较2015.5的技术对比](http://colobu.com/2015/07/14/performance-comparison-of-7-websocket-frameworks/)
 - [使用四种框架分别实现百万websocket常连接的服务器2015.5的技术对比,有性能调优方案](http://colobu.com/2015/05/22/implement-C1000K-servers-by-spray-netty-undertow-and-node-js/)
 - http://colobu.com/categories/%E9%AB%98%E5%B9%B6%E5%8F%91%E7%BC%96%E7%A8%8B/
 - https://github.com/smallnest/C1000K-Servers
 - http://colobu.com/2016/09/05/benchmarks-of-popular-rpc-frameworks/
 - [netpoll](https://github.com/mailru/easygo)
 - [httphead](https://github.com/gobwas/httphead)
- [用 500 行 Golang 代码实现高性能的消息回调中间件](https://ruby-china.org/topics/34240)

### 使用情况 <https://github.com/golang/go/wiki/GoUsers>

[Youtube](https://github.com/vitessio/vitess)

[coreos](https://github.com/coreos/)

[Intel](https://github.com/clearcontainers)

[Rend：Netflix 出品的与 memcached 协议兼容的高并发代理服务器](https://github.com/Netflix/rend)

[pinterest](https://github.com/pinterest?language=go)

[Segment](https://github.com/segmentio?language=go)

[uber](https://github.com/uber?language=go)

[ai.pyro](https://github.com/uber/pyro)

[Basecamp](https://signalvnoise.com/posts/3897-go-at-basecamp)
- [go-batsd.Golang-based daemon for aggregating and storing statistics.statsd](https://github.com/noahhl/go-batsd)
- [build_ruby building Ruby packages using Docker](https://github.com/wjessop/build_ruby)

### PhxQueue 微信高可用 queue

[微信开源PhxQueue(很详细)](https://www.youyong.top/article/1159b9e5d363d)
 - PhxQueue 目前在微信内部广泛支持微信支付、公众平台等多个重要业务，日均入队达千亿，分钟入队峰值达一亿。
 - 其设计出发点是高数据可靠性，且不失高可用和高吞吐，同时支持多种常见队列特性。
 - <https://mp.weixin.qq.com/s/Hr4TUg8o1AQkowQpSDIhYA>
 - [使用](https://sdk.cn/datas/5219)
 - https://github.com/Tencent/phxqueue
 - https://github.com/google/leveldb

## matcha go 移动支持

<https://github.com/gomatcha/matcha>

## profile tools

[静态分析工具](http://www.freebuf.com/sectool/119680.html)

[集合](https://github.com/gojp/goreportcard)
 - `go tool vet ./*/*/*.go`

[go tool trace](http://mp.weixin.qq.com/s/nf_-AH_LeBN3913Pt6CzQQ)

[Static analyser for finding Deadlocks in Go](https://github.com/nickng/dingo-hunter)

[gometalinter](https://github.com/alecthomas/gometalinter)

[goreporter](https://github.com/wgliang/goreporter)

[A high-performance distributed execution engine](https://github.com/ray-project/ray)

## 内存问题

[道锴:记一次Go websocket　项目内存泄露排查 + 使用Go pprof定位内存泄露](https://gocn.io/article/340)

[golang 如何限制内存](https://segmentfault.com/q/1010000000590828)
 - 要统计内存，可以使用 [runtime.MemProfile](http://golang.org/pkg/runtime/#MemProfile)。
 - go 完全不使用 stack，所有内存都在堆上分配，有可能你 Setrlimit 是因为这个原因不工作，不过我不太确定。

[golang 垃圾回收 gc](http://studygolang.com/articles/7366)
 - 一是go的垃圾回收有个触发阈值，这个阈值会随着每次内存使用变大而逐渐增大（如初始阈值是10MB则下一次就是20MB，再下一次就成为了40MB…）
 - 如果长时间没有触发gc go会主动触发一次（2min）。高峰时内存使用量上去后，除非持续申请内存，靠阈值触发gc已经基本不可能，而是要等最多2min主动gc开始才能触发gc。
 - 第二个原因是go语言在向系统交还内存时只是告诉系统这些内存不需要使用了，可以回收；同时操作系统会采取“拖延症”策略，并不是立即回收，而是等到系统内存紧张时才会开始回收这样该程序又重新申请内存时就可以获得极快的分配速度。

[理解 GO 语言的内存使用](https://mikespook.com/2014/12/%E7%90%86%E8%A7%A3-go-%E8%AF%AD%E8%A8%80%E7%9A%84%E5%86%85%E5%AD%98%E4%BD%BF%E7%94%A8/)

[monit](https://www.logicmonitor.com/blog/custom-application-monitoring-go/)

## mysql 2 es

<https://github.com/siddontang/go-mysql>

<https://github.com/siddontang/go-mysql-elasticsearch>

### 异步并发模型 channel

<https://github.com/matryer/vice>
 - <https://github.com/azhao1981/vice>
 - BETA版,难用于生产

[genServer](https://github.com/AlexanderChen1989/gen)
 - 人太少,只能参考

系统channel

| [Go语言学习：Channel/基本概念](http://hustcat.github.io/channel/) |
[Go Channel详解/常用代码用法](http://colobu.com/2016/04/14/Golang-Channels/) |

| [深度剖析channel](http://shanks.leanote.com/post/%E6%B7%B1%E5%BA%A6%E5%89%96%E6%9E%90channel) |
[简单用法](http://tonybai.com/2014/09/29/a-channel-compendium-for-golang/)

**Actor vs SCP** 
 - Actor模型广义上讲与CSP模型很相似。但两种模型就提供的原语而言，又有一些根本上的不同之处
 - CSP模型处理过程是匿名的，而Actor模型中的Actor则具有身份标识。
 - CSP模型的消息传递在收发消息进程间包含了一个交会点，即发送方只能在接收方准备好接收消息时才能发送消息。
 - 相反，actor模型中的消息传递是异步的，即消息的发送和接收无需在同一时间进行，发送方可以在接收方准备好接收消息前将消息发送出去。
 - 这两种方案可以认为是彼此对偶的。
 - 在某种意义下，基于交会点的系统可以通过构造带缓冲的通信的方式来模拟异步消息系统。
 - 而异步系统可以通过构造带消息/应答协议的方式来同步发送方和接收方来模拟交会点似的通信方式。
 - CSP使用显式的Channel用于消息传递，而Actor模型则将消息发送给命名的目的Actor。这两种方法可以被认为是对偶的。
 - 某种意义下，进程可 以从一个实际上拥有身份标识的channel接收消息，而通过将actors构造成类Channel的行为模式也可以打破actors之间的名字耦合。
 - go 使用 CSP

[(翻译)绝妙的channel](http://mikespook.com/2013/05/%E7%BF%BB%E8%AF%91%E7%BB%9D%E5%A6%99%E7%9A%84-channel/)

## soundcloud 在线音乐分享平台

https://peter.bourgon.org/go-in-production/
https://peter.bourgon.org/go-best-practices-2016/#development-environment

## http 高性能

https://github.com/valyala/fasthttp
https://github.com/gin-gonic/gin

## goenv

```bash
git clone https://github.com/syndbg/goenv.git ~/.goenv
git clone git@gitee.com:mirrors_syndbg/goenv.git ~/.goenv

echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bashrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(goenv init -)"' >> ~/.bashrc

# 这时 wsl里的code并不能使用，需要
echo 'source ~/.bashrc'>> ~/.bash_profile

cd ~/.goenv/plugins/go-build/share/go-build

# 把地址改成 ustc, 不要再用studygolang.com(国内)

https://mirrors.ustc.edu.cn/golang/
sed -i 's/https:\/\/golang.org\/dl\//https:\/\/mirrors.ustc.edu.cn\/golang\//g' 1.14.15
sed -i 's/https:\/\/go.dev\/dl\//https:\/\/mirrors.ustc.edu.cn\/golang\//g' 1.17.6
git diff
-> https://golang.org/dl/go1.14.15.linux-amd64.tar.gz

goenv install 1.14.15
goenv global 1.14.15
g reset --hard origin/master

# brew 并不好,还是用手动安装吧
brew update
brew install goenv
brew upgrade goenv
brew info goenv

echo 'eval "$(goenv init -)"' >> ~/.bashrc
~/.goenv/shims to your $PATH
~/.goenv/completions/goenv.bash

goenv init
```

## [goproxy/镜像代理](https://github.com/goproxy/goproxy.cn)

```bash
go env -w GOPROXY=https://goproxy.cn,direct
```

<https://github.com/golang/go/wiki/Modules#are-there-always-on-module-repositories-and-enterprise-proxies>

https://github.com/goproxyio/goproxy

## golang 系统命令

go语言中执行命令的几种方式
https://www.yangyanxing.com/article/exec_command_in_go.html

## go vscode debug

<https://github.com/Microsoft/vscode-go/wiki/Debugging-Go-code-using-VS-Code>

[VS Code 断点调试golang](https://segmentfault.com/a/1190000018671207)

## docker

### docker iamges

https://dev.aliyun.com/detail.html?spm=5176.1972343.2.6.jIhoPS&repoId=1215

https://hub.docker.com/_/golang

`docker pull golang:1.10.1`

```
FROM golang:1.8

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]

docker build -t my-golang-app .
docker run -it --rm --name my-running-app my-golang-app

docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.8 go build -v
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang:1.8 make
```

### 快速建立可执行容器

https://www.kancloud.cn/lyric/docker-intro/79897

```bash
GOOS=linux CGO_ENABLED=0 go build -ldflags='-s -w' -o helloworld main.go && tar c helloworld | docker import - -c 'ENTRYPOINT ["/helloworld"]' helloworld:1.0

docker run -d -p 8080:8080 --name helloworld helloworld:latest 
```


Building Docker Containers for Go Applications
https://www.callicoder.com/docker-golang-image-container-example/
利用docker在本地交叉编译golang项目
https://www.jishuwen.com/d/2OCx

https://hub.docker.com/r/ibbd/golang
https://github.com/jetbrains-infra/docker-image-golang

### 建立最小可执行程序

- [参考](https://blog.cloud66.com/how-to-create-the-smallest-possible-docker-image-for-your-golang-application/)

需要先在本也有一个 ./try for linux 的golang build后的进程

```Dockerfile
FROM scratch
COPY try try
CMD ["./try"]
```

```bash
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build
docker build . -t tryimages:smallest
docker run tryimages:smallest

go build -ldflags 'flag list'
-s disable symbol table
-w disable DWARF generation

```

二步走

```bash
这步其实可以不用
docker build -f Dockerfile.builder -t gohello:latest .
docker container cp [id_of_container]:/go/src/helloworld/helloworld helloworld
docker history helloworld

在本地直接编就可以了
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build --ldflags '-w -s' -a -installsuffix cgo -o helloworld

docker build -f Dockerfile.prod -t helloworld:latest .
docker run -d -p 8080:8080 --name helloworld helloworld:latest

```

## 开发环境

<https://segmentfault.com/a/1190000002586255>
 - goimports 自动整理imports

## interview

<https://github.com/MaximAbramchuck/awesome-interview-questions#golang>
 - <https://github.com/mrekucci/epi>
 - <http://career.guru99.com/top-20-go-programming-interview-questions/>
 - <https://github.com/efischer19/golang_ctci>

## 其它

一般,没有什么这点
Go 夜读 > Share the related technical topics of Go every week through zoom online live broadcast, every day on the WeChat/Slack to communicate programming technology topics. 每周通过 zoom 在线直播的方式分享 Go 相关的技术话题，每天大家在微信/Slack 上及时沟通交流编程技术话题。 https://reading.developerlearning.cn
https://github.com/developer-learning/reading-go
