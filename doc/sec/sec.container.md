# 容器安全

GKE（Google Kubernetes Engine (GKE) ） 应用的安全控制和取证分析
https://cloud.google.com/solutions/security-controls-and-forensic-analysis-for-GKE-apps?hl=zh-cn

+ 保护您的 Google Cloud 环境。使用适当的安全相关控制和配置来配置 Google Cloud 并部署工作负载。
在基础架构级层 
Cloud Identity and Access Management (Cloud IAM) 政策、
防火墙规则、
GKE Workload Identity
GKE PodSecurityPolicies 
可以帮助您构建一个安全性增强、具有最小权限的 Google Cloud 环境。

在 GKE 集群级层，您可以采用分层式安全方法使用容器专用工具，
例如 Binary Authorization 
 Container Analysis。

在网络层，
VPC、负载平衡器和 Google Cloud Armor 等功能可为网络流量提供安全相关控制。

在应用级层，Cloud Endpoints 和 Identity-Aware Proxy (IAP) 等工具可提供用于增强 GKE 应用安全性的工具。

+ 准备突发事件响应方案。计划如何应对安全突发事件。
收集所有相关的日志和数据源。提前收集有关 Google Cloud 环境的日志和相应数据，并了解如何访问它们。
使用自动事件检测功能。配置主动扫描，以提醒您潜在的安全性事件、配置错误和漏洞。
使用分析工具进行取证分析。使用分析工具来帮助发现和记录安全突发事件。

[Forseti](https://forsetisecurity.org/) 是一个开源项目，可用于构建您的 Google Cloud 资源清单、扫描环境，以及设置要执行的政策。
Forseti 与 Security Command Center 集成，可以向 Security Command Center 报告结果。您可以使用 Forseti 来检查 GKE 集群上的任意配置值，确保它们与您的规范一致。如果您使用的是 Anthos，则可以使用 Anthos Config Management 定义常见配置、实施这些配置并监控配置偏移。
只有google cloud的

kube-hunter
kube-hunter 使用远程、内部和网络扫描来扫描 Kubernetes 集群中的安全漏洞。kube-hunter 可以在交互模式下使用，也可以用作集群的自动远程渗透测试。
Docker-explorer 是一个可帮助取证分析师探索离线 Docker 文件系统的项目。 当 Docker 容器遭到盗用时，此方法可能有用。
https://github.com/google/docker-explorer

Kubectl Sysdig Capture + Sysdig Inspect
https://github.com/sysdiglabs/kubectl-capture
https://github.com/draios/sysdig-inspect
Kubectl Sysdig Capture 是一个开源的 kubectl 插件，可触发 pod 中系统活动的捕获。
Sysdig 使 pod 信息可用于 Sysdig Inspect，
Sysdig Inspect 是一个用于容器问题排查和安全调查的开源工具。
Sysdig Inspect 可以直观地组织整理 Linux 系统中的细化系统、网络和应用活动，并关联一个 pod 内部的各项活动。


