# 零信

##　NIST SP 800-207

英文版

[download](https://csrc.nist.gov/publications/detail/sp/800-207/final)

[英文版](books/NIST.SP.800-207.pdf)

中文版

[「公益译文」首发来了，NIST标准《零信任架构》正式版（中文）](https://www.nsfocus.com.cn/html/2020/21_0814/592.html)

[download](https://c-csa.cn/u_file/photo/20200706/91a8652685.pdf)

[中文版](books/NIST.SP.800-207中文版.pdf)

视频

[Zero Trust Architecture (NIST SP 800-207)](https://www.youtube.com/watch?v=o3Or6zgYZx8)

[SANS Webcast - Zero Trust Architecture](https://www.youtube.com/watch?v=5sFOdpMLXQg)

引用：

http://blog.nsfocus.net/

https://c-csa.cn/

## 架构

统一认证中心
  https://github.com/CipherChina/CipherIDaaS 国产
零信任网关

## 对比

https://github.com/gravitational/teleport 9.3k 804
https://github.com/oauth2-proxy/oauth2-proxy 3.4 683
https://github.com/pritunl/pritunl 3.1k 452
https://github.com/pomerium/pomerium 2.4 169

## teleport

Certificate authority and access plane for SSH, Kubernetes, web applications, and databases
https://github.com/gravitational/teleport
https://github.com/gravitational/webapps
https://gitee.com/mirrors/teleport
docker pull quay.io/gravitational/teleport:6.1.1
https://goteleport.com/blog/applying-principles-of-zero-trust-to-ssh/
https://goteleport.com/
https://goteleport.com/tags/security/
https://goteleport.com/tags/ssh/

TODO：node docker cn和最佳实践
视频
https://goteleport.com/docs/getting-started/

sudo teleport start
chown $USER /var/lib/teleport

sudo docker run -it -p 3080:3080 web-apps yarn run start --target=https://example.com:3080/web
yarn run start --target=https://example.com:3080/web
yarn run --target=https://0.0.0.0:3080/web

teleport最新版不支持mysql_Q&A · tp4a/teleport Wiki · GitHub
https://blog.csdn.net/weixin_35586996/article/details/114471252
teleport安装使用手记.txt
https://gist.github.com/snail007/340aef1ae708a1b51db7a84285398a70
将 GitHub 凭证与 Teleport 结合进行 EKS 身份验证
https://aws.amazon.com/cn/blogs/china/authenticating-eks-github-credentials-teleport/

同名国产
Teleport是一款简单易用的堡垒机系统。
https://tp4a.com/
https://github.com/tp4a/teleport


## Pomerium
Pomerium is an identity-aware access proxy.
https://github.com/pomerium/pomerium
https://github.com/pomerium/awesome-zero-trust



https://github.com/99designs/aws-vault
A reverse proxy that provides authentication with Google, Github or other providers.| 零信
https://github.com/oauth2-proxy/oauth2-proxy

## pritunl
https://zero.pritunl.com/
https://github.com/oauth2-proxy/oauth2-proxy

Running Pritunl Zero in my homelab (not interested in paying for my own internal tinkering) and have had a great experience with it so far. 
The ability to spin up reverse proxies, SSH certificate management, and bastion hosts is really useful and very easy to learn.

Previously I was running oauth2_proxy for protecting web services and Vault signed SSH certs for protecting SSH access. 
Pritunl Zero checked both of these boxes in a single platform, so it was a no brainer for me. 
Unfortunately I can't attest to how enterprise worthy any of this is as my employer doesn't use it.

评估工具
https://www.guardicore.com/infectionmonkey/zero-trust/
其它
https://www.findbestopensource.com/tagged/zero-trust


https://smallstep.com/blog/zero-trust-swiss-army-knife/

这个好像已经不开发了
https://github.com/kolide/fleet

[浅谈Forrester零信任架构评估的7个技术维度](https://www.anquanke.com/post/id/226062)
36氪新风向 | 当50余家公司闻风而动，「零信任安全」会是下一个价值洼地吗？
http://china.36kr.com/p/1039654212954373?column=%E6%9C%80%E6%96%B0&navId=8
Kubernetes 下零信任安全架构分析
https://developer.aliyun.com/article/738933


https://hub.docker.com/r/jumpserver/jms_all
docker pull jumpserver/jms_all:v2.9.0
https://jumpserver.readthedocs.io/zh/1.4.8/dockerinstall.html

## awesome

# Zero-Trust-Software
Github上部分零信任相关开源软件或文档集合

## 零信任相关文档
1、https://github.com/iamhrishikeshpadhye/Software-Defined-Perimeter
包含零信任框架概述、部分公司软件信息等文件以及部分github上的零信任开源软件
这个存储库是与“软件定义周界”和相关概念(如 SPA、 Zero Trust 等)相关的资源的集合。
这些收藏包括研究论文、指南、白皮书、网页内容、视频链接等。这个存储库处于不断更新状态。

2、https://github.com/WaverleyLabs/SDPcontroller
使用node.js编写的软件定义边界控制器，仅在*-nix 系统上进行验证。（由于该程序数据库设置问题，无法进行验证和测试）

1、https://github.com/sbaumgartner75/ZeroTrust
作者硕士论文《Wenn ich dem Netzwerk nicht mehr traue - Frameworks und Lösungen für Zero Trust（当我不再信任网络时-零信任的框架和解决方案）》中的程序，基于python和PHP语言。

## 加密解密
1、https://github.com/Soluto/kamus
客户可以轻松实现加密操作，仅在指定程序中可以解密。

## 单包授权认证（SPA）
1、https://github.com/greenstatic/openspa or https://github.com/greenstatic/opensdp
基于go语言的SPA认证程序，但编译成可执行文件后在liunx上无法运行。

2、https://github.com/WaverleyLabs/fwknop
基于liunx系统单包授权认证和端口探测软件，且支持多个用户。（已进行验证和测试）
安卓程序下载链接[https://pan.baidu.com/s/1yZaLgMYXZtIQf5YVhziGIg](https://pan.baidu.com/s/1yZaLgMYXZtIQf5YVhziGIg) 0000

1、https://github.com/ojkelly/warden 不再更新
用于解决零信任框架下的身份验证问题，基本不需要进行配置。

2、https://github.com/kryptco/sigchain
基于哈希函数进行验证的零信任数据管理软件

## 零信任访问代理
1、https://github.com/f110/heimdallr
具有身份识别的代理软件，可以通过浏览器管理用户。

2、https://github.com/cogolabs/beyond
基于谷歌BeyondCord启发的零信任访问代理软件

国内外零信任：我们不一样
https://www.freebuf.com/articles/network/270605.html