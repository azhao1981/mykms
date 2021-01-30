# js漏洞

## jquery

+ [ ] 怎么人工找到 版本
+ [ ] 怎么找到在有问题版本情况下,错误的使用办法
  + [ ] vt=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi 还是这个的应该是有问题的
  + [ ] vt=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi
+ [ ] 怎么自动找 版本,错误使用方法
+ [ ] 怎么在代码里扫出来
  + [ ] sonarQube

jQuery跨站脚本执行漏洞（CVE-2020-7656）
http://www.nsfocus.net/vulndb/50210
jQuery 1.9.0之前版本中存在跨站脚本执行漏洞。
该漏洞源于加载方法未能识别和删除包含空格字符（即“ </ script>”）的“ <script>” HTML标记。攻击者可利用该漏洞发起跨站脚本攻击。

[jQuery框架漏洞全总结及开发建议](https://mp.weixin.qq.com/s/M1BYj6VbeoNV4C5M7cR_hA)

[jQuery最新xss漏洞分析——CVE-2020-11022/11023	](https://cloud.tencent.com/developer/article/1638163)

<https://vulnerabledoma.in/jquery_htmlPrefilter_xss.html>

```javaScript
<style><style /><img src=x onerror=alert(1)>
<img alt="<x" title="/><img src=x onerror=alert(1)>">
<option><style></option></select><img src=x onerror=alert(1)></style>
```
参考： [怎样查看jquery版本号？](https://m.html.cn/qa/jquery/13841.html)

```JavaScript
// 网站->右键->检查->console
$().jquery
$.fn.jquery
```

jQuery.com: jQuery 1.9.1
Nginx 1.10.3
WordPress 4.6.1
PHP 5.3.3

最新:

[jQuery 跨站脚本执行漏洞（CVE-2020-11023）](http://www.nsfocus.net/vulndb/48902)
> jQuery 1.0.3及之后版本和3.5.0之前版本存在跨站脚本执行漏洞
[jQuery 跨站脚本执行漏洞（CVE-2020-11022）](http://www.nsfocus.net/vulndb/48898)
> jQuery 1.2及之后版本和3.5.0之前版本
> 官方https://blog.jquery.com/2020/04/10/jquery-3-5-0-released/
> POC： https://mksben.l0.cm/2020/05/jquery3.5.0-xss.html
> POC:  https://vulnerabledoma.in/jquery_htmlPrefilter_xss.html
> [jQuery最新xss漏洞分析——CVE-2020-11022/11023](https://cloud.tencent.com/developer/article/1638163)
> 即使执行了消毒（sanitize）处理，也仍会执行将来自不受信任来源的HTML传递给jQuery的DOM操作方法（即html()、.append()等），从而导致xss漏洞

[WEB安全漏洞之javascript版本漏洞](https://blog.csdn.net/Agonie_25/article/details/90370004)
> 不同的工具扫描的情况也不同，比如在项目中，我们把jqeury版本升级到v1.11.0， webinspect 没有扫描出漏洞，但是 AWVS 则扫出了漏洞。

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-28488
[jQuery UI 1.12.1 - Denial of Service (DoS)](https://www.exploit-db.com/exploits/49489)
<https://www.secfree.com/vul-156965.html>
jquery-ui 存在安全漏洞，该漏洞源于当“dialog”被多次注入到HTML标签中时，浏览器和应用程序崩溃。
崩溃的是本地浏览器,攻击的方法可以是注入后,造成对方的网页在客户前面看起来"不好用"

## 其它资源

爬虫 JavaScript 篇[Web 漏洞扫描器]
https://paper.seebug.org/570/



