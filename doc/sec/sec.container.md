# 容器安全

安全容器的概念：
现在容器的问题
docker daemon的权限必须是root，这还是偏向管理方便，而不是安全
比如我需要安装一个 redis，默认是安全的
那么我应该是：
+ 使用redis用户来运行容器
+ 控制端口为xxx
+ 文件只能访问在某个范围内

[私有云安全：容器产品架构设计实践](https://www.freebuf.com/articles/network/259775.html)
这篇和参考文档中的文章，基本就可以构成一个相对完整的框架了
Docker安全入门与实战（二）
https://zhuanlan.zhihu.com/p/43671129

https://www.cisecurity.org/benchmark/docker/
Github仓库：https://github.com/docker/docker-bench-security.git
https://www.cisecurity.org/benchmark/kubernetes/
Github仓库：https://github.com/aquasecurity/kube-bench
Kubernetes的管理平台Rancher、Kubeoperator等已经支持集成kube-bench
 ./kube-bench <master|node>
 Cilium 是一个内核层的 API 感知网络和安全工具，它专注于解决安全网络连接，与 Docker、Kubernetes 等 Linux 容器平台有良好的兼容性，增加了安全可视化以及控制逻辑。

Github仓库：https://github.com/cilium/cilium

Docker容器的漏洞分析与安全研究
https://www.anquanke.com/post/id/229487

## docker 镜像扫描

[docker 和snyk 联合出品的镜像](https://docs.docker.com/engine/scan/)

```bash
docker scan redis:6.2.5
```

评:这个很不错

## k8s

[浅谈云安全之K8S](https://www.anquanke.com/post/id/245526)

Secret 有三种类型：
Service Account : 用来访问Kubernetes API，由Kubernetes自动创建，并且会自动挂载到Pod的/run/secrets/kubernetes.io/serviceaccount目录中；
Opaque : base64编码格式的Secret，用来存储密码、密钥等；
kubernetes.io/dockerconfigjson : 用来存储私有docker registry的认证信息。

## tools

Kubesploit：针对容器化环境的跨平台后渗透利用工具
https://www.freebuf.com/articles/container/271402.html

###　[KubiScan](https://github.com/cyberark/KubiScan)

如何使用KubiScan扫描Kubernetes集群中的风险权限
https://www.freebuf.com/articles/security-management/270210.html

### [dagda](https://github.com/eliasgranderubio/dagda)

Dagda 会针对容器镜像中已知的漏洞、特洛伊、病毒、恶意软件和其它恶意威胁进行静态分析。

和其它的 Kubernetes 安全工具相比，Dagda 有两个与众不同之处：

+ 原生集成了 ClamAV，不仅可以扫描镜像，还能用作防毒软件。
+ Dagda 还提供了运行时保护功能。从 Docker 守护进程实时收集事件，并和 Falco 集成识别安全事件。

### [kube-bench](https://github.com/aquasecurity/kube-bench)

[kubernetes CIS 安全基线](https://www.jianshu.com/p/9393d31f85a9)
1.在容器中运行kube-bench，使用宿主机的PID namespace
2.运行一个容器来实现在宿主机上安装kube-bench，然后直接在宿主机上运行kube-bench
3.下载release文件直接运行
4.源码编译安装

下载: https://github.com/aquasecurity/kube-bench/releases
```bash
tar -zxvf kube-bench_0.3.0_linux_amd64.tar.gz
sudo mkdir -p /etc/kube-bench
sudo cfg /etc/kube-bench/
sudo cp -r cfg /etc/kube-bench/
sudo ./kube-bench node --benchmark cis-1.4
kube-bench master
```

[简介：CIS Kubernetes 安全基准指南](https://blog.fleeto.us/post/cis-benchmark-brief/)

[kubernetes 指南.安全](https://kubernetes.feisky.xyz/practice/security)
定期运行 CIS Kubernetes Benchmark，确保集群的配置或更新符合最佳的安全实践（使用 kube-bench 和 kube-hunter）。

### [kube-hunter](https://github.com/aquasecurity/kube-hunter)

[python 安装](https://github.com/azhao1981/my-notes/tree/master/doc/python)

```bash
pip install kube-hunter
kube-hunter
# 1 - 输入master ip
# 2 - 安装在node上，可以扫描“本地”的网络
# 3 未测试
```

[两个开源工具，强化你的 K8S 安全！](https://www.infoq.cn/article/2htIF3vuerB2DzVe32AI)
? token用来干什么？

## 引用
### [安全](https://kubernetes.feisky.xyz/practice/security)
### [容器安全](https://feisky.xyz/kubernetes-handbook/practice/security.html)
很多工具
### [33 个 Kubernetes 安全工具](https://blog.fleeto.us/post/33-kubernetes-security-tools/)
### GKE（Google Kubernetes Engine (GKE) ） 应用的安全控制和取证分析

＜https://cloud.google.com/solutions/security-controls-and-forensic-analysis-for-GKE-apps?hl=zh-cn＞

+ 保护您的 Google Cloud 环境。使用适当的安全相关控制和配置来配置 Google Cloud 并部署工作负载。
  + 在基础架构级层 
      Cloud Identity and Access Management (Cloud IAM) 政策
      防火墙规则
      GKE Workload Identity
      GKE PodSecurityPolicies 
      可以帮助您构建一个安全性增强、具有最小权限的 Google Cloud 环境。
  + 在 GKE 集群级层，您可以采用分层式安全方法使用容器专用工具，
      Binary Authorization 
      Container Analysis
  + 在网络层，
    + VPC、负载平衡器和 Google Cloud Armor 等功能可为网络流量提供安全相关控制。
  + 在应用级层
    + Cloud Endpoints
    + Identity-Aware Proxy (IAP) 
+ 准备突发事件响应方案。计划如何应对安全突发事件。
  + 收集所有相关的日志和数据源。提前收集有关 Google Cloud 环境的日志和相应数据，并了解如何访问它们。
  + 使用自动事件检测功能。配置主动扫描，以提醒您潜在的安全性事件、配置错误和漏洞。
  + 使用分析工具进行取证分析。使用分析工具来帮助发现和记录安全突发事件。

[Forseti](https://forsetisecurity.org/) 
  是一个开源项目，可用于构建您的 Google Cloud 资源清单、扫描环境，以及设置要执行的政策。
  Forseti 与 Security Command Center 集成，可以向 Security Command Center 报告结果。
  您可以使用 Forseti 来检查 GKE 集群上的任意配置值，确保它们与您的规范一致。
  如果您使用的是 Anthos，则可以使用 Anthos Config Management 定义常见配置、实施这些配置并监控配置偏移。

**只支持google cloud的**

[kube-hunter](https://github.com/aquasecurity/kube-hunter)

kube-hunter 使用远程、内部和网络扫描来扫描 Kubernetes 集群中的安全漏洞。
kube-hunter 可以在交互模式下使用，也可以用作集群的自动远程渗透测试。


[Docker-explorer](https://github.com/google/docker-explorer)

是一个可帮助取证分析师探索离线 Docker 文件系统的项目。 当 Docker 容器遭到盗用时，此方法可能有用。

[Kubectl Sysdig Capture](https://github.com/sysdiglabs/kubectl-capture)

Kubectl Sysdig Capture 是一个开源的 kubectl 插件，可触发 pod 中系统活动的捕获。

[Sysdig Inspect](https://github.com/draios/sysdig-inspect)

Sysdig 使 pod 信息可用于 Sysdig Inspect，
Sysdig Inspect 是一个用于容器问题排查和安全调查的开源工具。
Sysdig Inspect 可以直观地组织整理 Linux 系统中的细化系统、网络和应用活动，并关联一个 pod 内部的各项活动。


Docker 安全漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-073

Google Kubernetes 代码问题漏洞
http://www.cnnvd.org.cn/web/xxk/ldxqById.tag?CNNVD=CNNVD-202006-076

## 引用

Terrier：一款功能强大的镜像&容器安全分析工具
https://www.freebuf.com/articles/terminal/236070.html
并不能直接扫出有问题的结果
而是验证你想验证的sha值



Kubernetes 安全工具：

Project Calico——Calico为容器和虚拟机工作负载提供一个安全的网络连接。它可以创建并管理一个3层平面网络，为每个工作负载分配一个完全可路由的IP地址。工作负载可以在没有IP封装或网络地址转换的情况下进行通信，以实现裸机性能，简化故障排除和提供更好的互操作性。

Kube-hunter
Kube-hunter是由Aqua推出的一款工具，利用 Kube-hunter 可以进行免费 Kubernetes 环境渗透测试，在 Kube-hunter 网页中，系统会列出使用者环境出现的漏洞、严重性，以及问题的描述。利用 URL，企业用户也可以与组织内其他成员分享扫描结果。
https://github.com/aquasecurity/kube-hunter

NeuVector——Neuvector可以提供主机和pod的连续运行时保护，它可以通过扫描Kubernetes集群、节点、pod以及容器镜像来保护容器不受安全漏洞的影响。

应用程序跑在Docker容器中会更安全
http://www.voidcn.com/article/p-qiqekdgi-pz.html

Docker对安全的支持是与生俱来的。作为一个平台，Docker为跑在其中的所有应用程序提供安全保障，不需要在Docker之外，单独部署一套安全解决方案。

“Gartner声称应用程序跑在容器中比直接跑在操作系统中更安全。即使容器崩溃了，造成的危害也是有限的。因为应用程序以容器为单位，被相互隔离开来。一个容器出错，不会影响其他容器中的应用程序，也不会影响宿主机上的应用程序。”

“容器技术具有许多优点。从安全方面来说，容器技术创造了一种新的防护方法。通过这种方法可以减少攻击范围，并通过隔离技术，使每个应用程序仅仅暴露需要的组件、接口、函数库和网络连接。”
“技术发展到现在，我相信没有借口不把Linux应用程序跑在容器中。”

Docker全面的安全防护
https://zhuanlan.zhihu.com/p/31024207

报告分析了容器安全面临的挑战：容器使用共享操作系统（OS）模型。
对主机操作系统中的漏洞的攻击可能导致所有容器被攻击，且容器本身并不完全安全。
但真正的问题在于由开发人员以不安全的方式部署，安全团队很少或根本没有参与，安全架构师也没有指导。

Docker安全性（一）——Docker容器真的安全吗？
https://blog.csdn.net/yangzhenping/article/details/41699299

三个技巧，将 Docker 镜像体积减小 90%
https://www.infoq.cn/article/3-simple-tricks-for-smaller-docker-images
