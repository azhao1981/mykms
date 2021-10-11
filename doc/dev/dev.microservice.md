# 微服务

## 目标

构建一个微服务体系，实现以下目标

Ruby2.6.7+rails 4.2.11.3
> 定义一个Controller 接口
> 如接收一个 graphql
> https://github.com/rmosolgo/graphql-ruby
> 能把请求直接转给后端的微服务
> 返回结果

前端 react
> 1 前端微服务，使用某一机制，来决定客户自己使用的前端版本
> 
> 2 前端版本通过前端的配置，决定后端api版本
> 
> 3 监控版本使用情况，可以决定是否下架某一个微服务

微服务 java / golang
> 1 上线并注册为服务后，Ruby的接口可以把请求转过来
> 
> 2 每次上线一个服务的一个小版本，进行灰度
> 

## ruby

https://www.cloudbees.com/blog/writing-microservice-in-ruby

https://grpc.io/docs/languages/ruby/basics/

## https://github.com/asim/go-micro 星：16.4k 状态

## [B站Kratos](https://github.com/go-kratos/kratos) 星:13.9k 状态：

一套轻量级 Go 微服务框架，包含大量微服务相关框架及工具。 

https://github.com/go-kratos/kratos/blob/main/README_zh.md

https://github.com/go-kit/kit is a programming toolkit for building microservices in go.

https://github.com/asim/go-micro a distributed systems development framework.

https://github.com/google/go-cloud is go cloud development kit.

https://github.com/tal-tech/go-zero is a web and rpc framework with lots of builtin engineering practices.

https://github.com/beego/beego is a web framework including RESTful APIs, web apps and backend services.

## [字节跳动kitex](https://github.com/cloudwego/kitex) 835 星 状态：beta

Kitex 字节跳动内部的 Golang 微服务 RPC 框架，具有高性能、强可扩展的特点，针对字节内部做了定制扩展。

如今越来越多的微服务选择使用 Golang，我们考虑将 Kitex 开源出来丰富开源社区。
如果对微服务性能有要求，又希望定制扩展融入自己的治理体系，Kitex 会是一个不错的选择。

https://gitee.com/mirrors_trending/kitex

[中文quickstart](https://github.com/cloudwego/kitex/blob/develop/docs/guide/getting_started_cn.md) 

例子被转移到这个库里

https://github.com/cloudwego/kitex-examples

主应用 `go build`没有问题，
但是在 examples 里会卡在 

https://github.com/cloudwego/kitex-examples/issues/2

这说明这个项目还没有整理好，hello world没有能执行下去

```bash
ubuntu@ubuntu:~/kitex/kitex-examples$ fd -e .go|xargs grep opentracing|grep kitex-contrib/opentracing
tracer/client/opentracing/main.go:      internal_opentracing "github.com/kitex-contrib/opentracing"
tracer/server/opentracing/main.go:      internal_opentracing "github.com/kitex-contrib/opentracing"
```
手动把 kitex-contrib 改成 opentracing

```bash
ubuntu@ubuntu:~/go/src/github.com/cloudwego/kitex/tool/cmd/kitex$ go build
go: downloading golang.org/x/tools v0.1.0
ubuntu@ubuntu:~/go/src/github.com/cloudwego/kitex/tool/cmd/kitex$ ls
args.go  kitex  main.go
ubuntu@ubuntu:~/go/src/github.com/cloudwego/kitex/tool/cmd/kitex$ ls
args.go  kitex  main.go
ubuntu@ubuntu:~/go/src/github.com/cloudwego/kitex/tool/cmd/kitex$ mv kitex ~/go

# 并没有和教程里说的，会生成新的代码
ubuntu@ubuntu:~/kitex/kitex-examples/hello$ kitex -service a.b.c hello.thrift
Outside of $GOPATH. Please specify a module name with the '-module' flag.
ubuntu@ubuntu:~/kitex/kitex-examples/hello$ kitex -service a.b.c hello.thrift -module hello
Require exactly 1 IDL file.
```
结论：kitex 好像还不是很成熟