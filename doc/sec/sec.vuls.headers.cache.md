# Cache-Control CWE

服务器接口配置的缓存策略不正确，可能会造成缓存服务器或共享浏览器用户缓存用户的敏感数据.造成敏感信息泄露。

大多的评级都评为 information 信息

发现 从 burpsuite dashboard可以看到：

  Issue:   Cacheable HTTPS response
  Severity 严重等级:   Information  参考： [cacheable-https-response](https://portswigger.net/kb/issues/00700100_cacheable-https-response)
  Confidence 信心:   Certain
  Host:   https://xxxx.cn
  Path:   /

问题详情

   This issue was found in multiple locations under the reported path.  

问题背景

   Unless directed otherwise, browsers may store a local cached copy of content received from web servers. 
   Some browsers, including Internet Explorer, cache content accessed via HTTPS. 
   If sensitive information in application responses is stored in the local cache, then this may be retrieved by other users who have access to the same computer at a future time.

问题修复建议

   Applications should return caching directives instructing browsers not to store local copies of any sensitive data. 
   Often, this can be achieved by configuring the web server to prevent caching for relevant paths within the web root. 
   Alternatively, most web development platforms allow you to control the server's caching directives from within individual scripts. 
   Ideally, the web server should return the following HTTP headers in all responses containing sensitive content:
```bash
   Cache-control: no-store
   Pragma: no-cache
```

Vulnerability classifications

  [CWE-524: Information Exposure Through Caching](https://cwe.mitre.org/data/definitions/524.html)

  [CWE-525: Information Exposure Through Browser Caching](https://cwe.mitre.org/data/definitions/525.html)

[Chrome浏览器的缓存文件的位置](https://blog.csdn.net/yerenyuan_pku/article/details/88881967)

[工具chrome_cookies_view](https://www.nirsoft.net/utils/chrome_cookies_view.html)

解决：在返回headers中添加

  `Cache-Control: no-cache, no-store, must-revalidate`

这是参考腾讯云后台的配置

示例：腾讯云后台

GET /product/events/ajax/getEventList?tid=11&page=1&pageSize=3&type=1 HTTP/1.1

Host: cloud.tencent.com

返回：

Cache-Control: no-cache, no-store, must-revalidate

[HTTP 缓存](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Caching)

[Cache-Control](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Headers/Cache-Control)

[Research Concepts](http://vulhub.org.cn/cwe_list)

<https://www.immuniweb.com/vulnerability/information-exposure.html>