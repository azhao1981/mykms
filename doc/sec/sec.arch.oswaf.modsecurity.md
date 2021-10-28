
# [Modsecurity](https://www.modsecurity.org/)

### 概述

优点: 基于nginx, 开源, 跨平台,有 OWASP 规则库支持

[github](https://github.com/SpiderLabs/ModSecurity)

[OWASP核心规则集](https://github.com/coreruleset/coreruleset)

https://github.com/SpiderLabs/ModSecurity-nginx

中文页 http://www.modsecurity.cn/

### Docker

https://hub.docker.com/r/owasp/modsecurity

https://github.com/coreruleset/modsecurity-docker

```bash
docker pull owasp/modsecurity:3.0.5

grep -v '^#' crs-setup.conf | grep -v "^$"
```

https://hub.docker.com/r/owasp/modsecurity-crs/
https://github.com/coreruleset/modsecurity-crs-docker

https://github.com/coreruleset/ftw Framework for Testing WAFs (FTW!)

  The Official OWASP Core Rule Set Docker Image (ModSecurity+Core Rule Set) 

```bash
sudo docker pull owasp/modsecurity
sudo docker pull owasp/modsecurity-crs:v3.3.2-nginx
sudo docker run -dti -p 80:80 --rm \
   -e PARANOIA=1 \
   -e EXECUTING_PARANOIA=2 \
   -e ENFORCE_BODYPROC_URLENCODED=1 \
   -e ANOMALY_INBOUND=10 \
   -e ANOMALY_OUTBOUND=5 \
   -e ALLOWED_METHODS="GET POST PUT" \
   -e ALLOWED_REQUEST_CONTENT_TYPE="text/xml|application/xml|text/plain" \
   -e ALLOWED_REQUEST_CONTENT_TYPE_CHARSET="utf-8|iso-8859-1" \
   -e ALLOWED_HTTP_VERSIONS="HTTP/1.1 HTTP/2 HTTP/2.0" \
   -e RESTRICTED_EXTENSIONS=".cmd/ .com/ .config/ .dll/" \
   -e RESTRICTED_HEADERS="/proxy/ /if/" \
   -e STATIC_EXTENSIONS="/.jpg/ /.jpeg/ /.png/ /.gif/" \
   -e MAX_NUM_ARGS=128 \
   -e ARG_NAME_LENGTH=50 \
   -e ARG_LENGTH=200 \
   -e TOTAL_ARG_LENGTH=6400 \
   -e MAX_FILE_SIZE=100000 \
   -e COMBINED_FILE_SIZES=1000000 \
   -e PROXY=1 \
   -e APACHE_TIMEOUT=60 \
   -e LOGLEVEL=warn \
   -e ERRORLOG='/proc/self/fd/2' \
   -e USER=daemon \
   -e GROUP=daemon \
   -e SERVERADMIN=root@localhost \
   -e SERVERNAME=localhost \
   -e PORT=80 \
   -e MODSEC_RULE_ENGINE=on \
   -e MODSEC_REQ_BODY_ACCESS=on \
   -e MODSEC_REQ_BODY_LIMIT=13107200 \
   -e MODSEC_REQ_BODY_NOFILES_LIMIT=131072 \
   -e MODSEC_RESP_BODY_ACCESS=on \
   -e MODSEC_RESP_BODY_LIMIT=524288 \
   -e MODSEC_PCRE_MATCH_LIMIT=1000 \
   -e MODSEC_PCRE_MATCH_LIMIT_RECURSION=1000 \
   owasp/modsecurity-crs:v3.3.2-nginx
#  owasp/modsecurity-crs:v3.3.0-nginx 启动后死循环了
```

参考一下这个, 用docker-compose来安装，更多讲结构化数据等，TODO

https://janikvonrotz.ch/2020/02/26/nginx-waf-with-modsecurity-and-owasp-crs/

```yaml
version: '3.9'
services:
  waf-crs:
    image: owasp/modsecurity-crs:v3.3.2-nginx
    environment:
      BACKEND: http://confluence:8090
      METRICS_ALLOW_FROM: all
      TZ: "Asia/Shanghai"
      SERVERNAME: confl6.local.dev
      PARANOIA: 1
      ANOMALY_INBOUND: 5
      ANOMALY_OUTBOUND: 4
    ports:
      - "8082:80"
      - "4445:443"
    depends_on:
      - confluence
```





[基于Owasp Modsecurity CRS规则的误报率和漏报率调试](https://www.freebuf.com/articles/web/243781.html)
[ModSecurity：一款优秀的开源WAF](https://www.freebuf.com/sectool/211354.html)
  ModSecurity v3.0.3审计日志中是包含请求体和响应体的，不过需要注意的是，3版本里SecAuditLogParts需要添加配置C，而不是IJ，用IJ目前是不会记录请求体的



上面的都要安装 libmaxminddb ，但这个会出错，我看有安装 libmaxminddb-dev-le
[ModSecurity：一款优秀的开源WAF](https://www.cnblogs.com/cheyunhua/p/11881125.html)
yum install gcc-c++ flex bison yajl yajl-devel curl-devel curl GeoIP-devel doxygen zlib-devel pcre pcre-devel libxml2 libxml2-devel autoconf automake lmdb-devel ssdeep-devel ssdeep-libs lua-devel libmaxminddb-devel git apt-utils autoconf automake build-essential git libcurl4-openssl-dev libgeoip-dev liblmdb-dev ibpcre++-dev libtool libxml2-dev libyajl-dev pkgconf wget zlib1g-dev

https://www.cnblogs.com/Hi-blog/p/OpenResty-ModSecurity.html

yum install gcc-c++ flex bison yajl yajl-devel curl-devel curl GeoIP-devel doxygen zlib-devel pcre pcre-devel libxml2 libxml2-devel autoconf automake lmdb-devel ssdeep-devel ssdeep-libs lua-devel libmaxminddb-devel git apt-utils autoconf automake build-essential git libcurl4-openssl-dev libgeoip-dev liblmdb-dev ibpcre++-dev libtool libxml2-dev libyajl-dev pkgconf wget zlib1g-dev -y
用这个又会报：Error: Unable to find a match: apt-utils build-essential libcurl4-openssl-dev libgeoip-dev liblmdb-dev ibpcre++-dev libxml2-dev libyajl-dev zlib1g-dev
但可以选安装
dnf instaall libmaxminddb-devel

优势：

> 完美兼容nginx，是nginx官方推荐的WAF
>
> 支持OWASP规则
>
> 3.0版本比老版本更新更快，更加稳定，并且得到了nginx、Inc和Trustwave等团队的积极支持
>
> 免费

劣势：

> 不支持检查响应体的规则，如果配置中包含这些规则，则会被忽略，nginx的的sub_filter指令可以用来检查状语从句：重写响应数据，OWASP中相关规则是95X。
>
> 不支持OWASP核心规则集DDoS规则REQUEST-912-DOS- PROTECTION.conf,nginx本身支持配置DDoS限制
>
> 不支持在审计日志中包含请求和响应主体

[用ModSecurity启动WAF的一次小试 | WAF](https://www.freebuf.com/articles/web/227217.html)

利用Nginx的resolver实现动态upstream
https://cjfeii.blog.csdn.net/article/details/77987004

```bash
# 这么写，就需要用resolver
resolver 114.114.114.114;
set $upstream_host baidu.com;
proxy_pass http://$upstream_host;
```

```bash
# 拉镜像，包含 OWASP 的规则
sudo docker pull owasp/modsecurity-crs:nginx

sudo docker cp waf:/etc/nginx ./
sudo docker cp waf:/etc/modsecurity.d ./
sudo docker cp waf:/opt/owasp-crs ./

sudo docker stop waf
sudo docker rm waf
sudo docker run -d --name waf \
-e BACKEND=http://192.168.3.233 \
-e METRICS_ALLOW_FROM=all \
-e TZ="Asia/Shanghai" \
-e SERVERNAME=blog.xxxx.com \
-e PARANOIA=1 \
-e ANOMALY_INBOUND=5 \
-e ANOMALY_OUTBOUND=4 \
-v /mnt/modsecurity/conf:/etc/nginx \
-v /mnt/modsecurity/modsecurity.d:/etc/modsecurity.d \
-v /mnt/modsecurity/owasp-crs:/opt/owasp-crs \
-v /mnt/modsecurity/tools/busybox:/bin/busybox \
-p 9080:80 \
owasp/modsecurity-crs:nginx
sudo docker ps
```

https://www.inmotionhosting.com/support/security/find-and-disable-specific-modsecurity-rules/

```bash
```

#### 真实IP,包括nginx access.log里的和 ModSecurity 中的 client ip

```conf
  # https://amos-x.com/index.php/amos/archives/nginx-realip/
  #　第一行不能少
  set_real_ip_from 0.0.0.0/0;
  real_ip_header  X-Forwarded-For;
  real_ip_recursive on;
  
  # https://github.com/SpiderLabs/ModSecurity/issues/2447
  log_format main escape=json '{ "timestamp": "$time_iso8601", '
                       '"remote_addr": "$remote_addr",'
                       '"x_forwarded": "$http_x_forwarded_for",'
                       '"http_referer": "$http_referer",'
                       '"request_method": "$request_method",'
                       '"server_protocol": "$server_protocol",'
                       '"request": "$scheme://$host$request_uri",'
                       '"upstream_addr": "$upstream_addr",'
                       '"body_bytes_sent":$body_bytes_sent,'
                       '"request_body":$request_body,'
                       '"request_time": "$request_time",'
                       '"upstream_response_time": "$upstream_response_time",'
                       '"status": $status,'
                       '"http_user_agent": "$http_user_agent" }';
```

#### Kubernetes Ingress modsecurity

Kubernetes Ingress — NGINX
https://www.helloworld.net/p/0055893025

在 Kong Ingress 控制器上实现 WAF 的最佳方法是什么？ （如 ModSecurity v3）
https://stackoom.com/question/4YjMm

包含核心规则集的规则文件和误报处理
https://www.netnea.com/cms/nginx-tutorial-7_including-owasp-modsecurity-core-rule-set/

An important rule file is `REQUEST-949-BLOCKING-EVALUATION.conf`. This is where the anomaly score is checked against the inbound threshold and the request is blocked accordingly.

`REQUEST-949-BLOCKING-EVALUATION.conf` 这个规则检查异常分数并相应阻止操作

949110



Then begin the outbound rules, which are less numerous and basically check for code leakages (stack traces!) and leakages in error messages (which give an attacker useful information to construct an SQL injection attack). The outbound score is checked in the file with the 959 prefix, and then again in the file with the 980 prefix.

然后开始执行出站规则，这些规则数量较少，基本上检查代码泄漏（堆栈跟踪！）和错误消息中的泄漏（这为攻击者提供了构造SQL注入攻击的有用信息）。在前缀为959的文件中检查出站分数，然后在前缀为980的文件中再次检查出站分数。

`./owasp-crs/rules/RESPONSE-959-BLOCKING-EVALUATION.conf`



处理误报

https://www.netnea.com/cms/nginx-tutorial-8_handling-false-positives-modsecurity-core-rule-set/

So disabling a single rule from a set of 200 rules is the best of all the bad solutions. The worst of all the bad solutions would be to disable ModSecurity altogether

所以在所有最差的方案中，单独禁止特定规则是最好的方案，最差的方案就是关掉ModSecurity

NGINX/ModSecurity 教程
https://www.netnea.com/cms/nginx-modsecurity-tutorials/


相关代码在这个库：
https://github.com/dune73/nginx-modsec-crs/
很多有用的运维工具 alias
https://github.com/dune73/nginx-modsec-crs/blob/master/bin/.nginx-modsec.alias


#### 配置解释

勉强够用的 Nginx 防火墙模块 ModSecurity 规则配置
https://blog.gazer.win/essay/modsecurity-nginx-rules-config.html

```conf
# 开源博客平台 WordPress 例外规则列表，请按需引入
# include rules/REQUEST-903.9002-WORDPRESS-EXCLUSION-RULES.conf

# 引入 扫描器/爬虫 检测及拦截规则(可根据 Headers/UA/URLs 实现便捷自定义)
include rules/REQUEST-913-SCANNER-DETECTION.conf
# 这个看下要怎么改？是否已经加，去掉还是改
```

#### wordpress

cat modsecurity.d/setup.conf

```conf
Include /etc/modsecurity.d/modsecurity.conf
Include /etc/modsecurity.d/modsecurity-override.conf

Include /etc/modsecurity.d/owasp-crs/crs-setup.conf
# 这条应该包含了 include rules/REQUEST-903.9002-WORDPRESS-EXCLUSION-RULES.conf
Include /etc/modsecurity.d/owasp-crs/rules/*.conf
```

#### docker 下的日志

如果 `docker logs waf | grep error` 可以

但是不能 docker logs waf | grep error > xxx.log

因为：

```bash
root@042700e01799:/var/log# ls -l nginx/
total 0
lrwxrwxrwx 1 root root 11 Oct 12 10:04 access.log -> /dev/stdout
lrwxrwxrwx 1 root root 11 Oct 12 10:04 error.log -> /dev/stderr
```

如果需要在宿主机上找文件

```bash
sudo docker inspect waf | grep LogPath
# 大概会在:
/var/lib/docker/containers/$(container_id)/*-json.log
```


```bash
sudo grep error /var/lib/docker/containers/042700e0179955c900d3a0493d7fa39371bb4cff94ce3078c2cc35d42dfb980d/042700e0179955c900d3a0493d7fa39371bb4cff94ce3078c2cc35d42dfb980d-json.log
```

### 规则微调

https://blog.xxxx.cn/?s=【┃好计划2⒏7⒏01705{Ｑ】】恒达如何修改邮箱

会触发

/etc/modsecurity.d/owasp-crs/rules/REQUEST-941-APPLICATION-ATTACK-XSS.conf

相关规则ID: 949110


https://github.com/coreruleset/coreruleset/blob/v3.3.2/rules/REQUEST-941-APPLICATION-ATTACK-XSS.conf

https://cheatsheetseries.owasp.org/cheatsheets/XSS_Filter_Evasion_Cheat_Sheet.html#us-ascii-encoding

中文
https://www.secpulse.com/archives/61940.html

US-ASCII编码(由于Kurt Huwig发现).这里使用7位代替8位,该XSS payload可以绕过很多基于内容检测的过滤器,但仅限于主机上使用US-ASCII编码传输或者你设置为此编码时才起作用.这对于WEB应用防火墙XSS过滤比对服务器端过滤绕过更有用.已知Apache Tomcat目前唯一以US-ASCII编码传输的服务器.

```html
¼script¾alert(¢XSS¢)¼/script¾
```

#### 规则格式

[ModSecurity OWASP核心规则集的两种配置模式](https://www.freebuf.com/articles/web/237521.html)

异常评分模式：效率低，负载高，误报低

```conf
SecDefaultAction "phase:1,log,auditlog,pass"
SecDefaultAction "phase:2,log,auditlog,pass"
```
独自控制模式：效率高，负载低，误报高

```conf
SecDefaultAction "phase:1,log,auditlog,deny,status:403"
SecDefaultAction "phase:2,log,auditlog,deny,status:403"
```

## 引用：

docker日志存储位置，设置docker容器日志大小
https://www.jianshu.com/p/b4c01931a711


ModSecurity误拦截处理方法（ModSecurity白名单）
http://www.modsecurity.cn/practice/post/6.html

基于OWASP Modsecurity CRS规则的误报率和漏报率调试
https://www.freebuf.com/articles/web/243781.html

modsecurity黑白名单以及规则检测模式配置
http://blog.itpub.net/31537832/viewspace-2689109/

使用ModSecurity阻止IP|动态名单
https://topic.kaikeba.com/p/1000050050625257


引用
[Nginx1.14.0+ModSecurity实现简单的WAF](https://www.cnblogs.com/xll970105/p/10250697.html)



