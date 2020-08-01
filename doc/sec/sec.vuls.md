# 常见漏洞

## Tomcat

### tomcat ghostcat Tomcat-Ajp

AJP Connector，它使用的是 AJP 协议（Apache Jserv Protocol）是定向包协议。
因为性能原因，使用二进制格式来传输可读性文本，它能降低 HTTP 请求的处理成本，因此主要在需要集群、反向代理的场景被使用。

https://github.com/hypn0s/AJPy

[POC](https://github.com/0nise/CVE-2020-1938)

[tenable Nessus: CVE-2020-1938: Ghostcat](https://zh-cn.tenable.com/blog/cve-2020-1938-ghostcat-apache-tomcat-ajp-file-readinclusion-vulnerability-cnvd-2020-10487?tns_redirect=true)

[Apache Tomcat - AJP 'Ghostcat File Read/Inclusion](https://www.exploit-db.com/exploits/48143)

xray 长亭科技 tomcat ghostcat 扫描
https://www.chaitin.cn/zh/ghostcat

CVE-2020-1938：Apache Tomcat服务器任意文件读取/包含漏洞通告
https://www.anquanke.com/post/id/199351

CVE-2020-1938 : Tomcat-Ajp 协议漏洞分析
https://www.anquanke.com/post/id/199448

CVE-2020-1938：Apache Tomcat服务器任意文件读取/包含漏洞通告
https://www.anquanke.com/post/id/199351

CVE-2020-1938 : Tomcat-Ajp 协议漏洞分析
https://www.anquanke.com/post/id/199448