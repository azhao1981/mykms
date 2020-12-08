# golang 安全

## 工具

### Go语言项目的安全评估技术

https://tonybai.com/2019/11/08/security-assessment-techniques-for-go-projects/
如go-vet、staticcheck和analysis包中

https://tip.golang.org/cmd/vet/
https://github.com/dominikh/go-tools
https://godoc.org/golang.org/x/tools/go/analysis
https://github.com/kisielk/errcheck
我们建议至少使用gosec、go-vet和staticcheck。
对大多数代码库而言，这些工具具有良好的文档和人机工效。他们还提供了针对常见问题的多种检查（例如ineffassign或errcheck）。但是，要对特定类型的问题进行更深入的分析，可能必须使用更具体的分析器，直接针对SSA开发定制的工具或使用semmle。
要对特定类型的问题进行更深入的分析，可能必须使用更具体的分析器，直接针对SSA开发定制的工具或使用semmle。
https://godoc.org/golang.org/x/tools/go/ssa
https://semmle.com/

https://github.com/dvyukov/go-fuzz

该工具使您可以快速有效地实施模糊测试，并且它已经有了不错的**战利品**。更高级的用户在猎错过程中可能还会发现**分布式**的模糊测试和**libFuzzer**的支持非常有用。

成果:https://github.com/dvyukov/go-fuzz#trophies
https://github.com/dvyukov/go-fuzz#random-notes
https://github.com/dvyukov/go-fuzz#libfuzzer-support

DependencyCheck工具

https://github.com/trailofbits/audit-kubernetes

### sonar-golang

GO语言静态代码测试---应用于区块链构建性测试
https://www.jianshu.com/p/aa44d4a822d0

### Gosec：Go语言源码安全分析工具
https://www.freebuf.com/sectool/179549.html

### Gryffin
https://github.com/yahoo/gryffin

Gryffin 是雅虎开发的一个大规模 Web 安全扫描平台。它不是另外一个扫描器，其主要目的是为了解决两个特定的问题 —— 覆盖率和伸缩性。
该平台采用 Go 语言开发，依赖：

1. Go
2. PhantomJS, v2
3. Sqlmap (for fuzzing SQLi)
4. Arachni (for fuzzing XSS and web vulnerabilities)
5. NSQ ,
6. Kibana and Elastic search, for dashboarding

### Go语言代码安全审计分享
https://www.freebuf.com/articles/web/224363.html

### 一些比较好的golang安全项目
https://cloud.tencent.com/developer/article/1398007

Hacking-With-Golang
https://github.com/re4lity/Hacking-With-Golang

