# headers安全

[HTTP Security Headers and How They Work](https://www.netsparker.com/whitepaper-http-security-headers)

https://owasp.org/www-project-secure-headers/

https://www.netsparker.com/blog/web-security/http-security-headers/

## 检查工具

owasp 推荐 https://github.com/riramar/hsecscan

```bash
sudo pip2 install hsecscan
```
只支持python2

https://github.com/koenbuyens/securityheaders

[在线版本|推荐](https://securityheaders.com/)

git clone https://github.com/koenbuyens/securityheaders.git
python securityheaders.py URI

https://github.com/santoru/shcheck

```bash
pip3 install shcheck
shcheck.py https://insecurity.blog
```
这个一闪就不见了


[CORS 完全手冊（一）：為什麼會發生 CORS 錯誤？](https://blog.huli.tw/2021/02/19/cors-guide-1/)

[CORS 完全手冊（二）：如何解決 CORS 問題？](https://blog.huli.tw/2021/02/19/cors-guide-2/)

这个很不错:

[CORS 完全手冊（五）：跨來源的安全性問題](https://blog.huli.tw/2021/02/19/cors-guide-5/)

扩展阅读: https://blog.huli.tw/archives/

[Cross-Origin-Embedder-Policy](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Headers/Cross-Origin-Embedder-Policy)

HTTP Cross-Origin-Embedder-Policy (COEP) 响应标头可防止文档加载未明确授予文档权限(通过 CORP或者 CORS)的任何跨域资源 。

[Cross-Origin-Resource-Policy](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Headers/Cross-Origin-Resource-Policy)
Cross-Origin-Resource-Policy 响应头会指示浏览器阻止对指定资源的无源跨域/跨站点请求。

Access-Control-Allow-Origin: *
https://developer.mozilla.org/zh-CN/docs/Web/HTTP/CORS

CORS介绍及其漏洞检测
https://zhuanlan.zhihu.com/p/83099266
有些开发者为了方便，直接使用请求者的origin作为ACAO的域名，例如下面的Nginx配置:
add_header "Access-Control-Allow-Origin" $http_origin;
add_header "Access-Control-Allow-Credentials" "true";
这种配置非常危险，相当于任意网站可以直接跨域读取其资源内容

[A guide to enable cross-origin isolation](https://web.dev/cross-origin-isolation-guide/)
[好像没有什么用:Chrome Site Isolation 简介](https://zhuanlan.zhihu.com/p/37861033)

[SharedArrayBuffer](https://www.apiref.com/javascript-zh/Reference/Global_Objects/SharedArrayBuffer.htm)

[从SharedArrayBuffer看Spectre漏洞](https://zhuanlan.zhihu.com/p/359767085)

[谷歌警告声明:关于 SharedArrayBuffer 对象邮件的澄清说明](https://developers.google.com/search/blog/2021/03/sharedarraybuffer-notes?hl=zh-cn)

[边信道（side-channel）读取未授权内存的攻击技术](https://googleprojectzero.blogspot.com/2018/01/reading-privileged-memory-with-side.html)

[ArrayBuffer](https://developer.mozilla.org/zh-CN/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer)

关于ArrayBuffert怎么"被分离"见: [深入学习 Node.js Buffer](http://www.semlinker.com/node-buffer/)

ECMAScript 8 内存共享与原子性
https://xyy94813.gitbook.io/x-note/fe/ecmascript/ecmascript-8-nei-cun-gong-xiang-yu-yuan-zi-xing
ReferenceError: Worker is not defined
[Web Worker 使用教程](https://www.ruanyifeng.com/blog/2018/07/web-worker.html)
好像这个也没有说怎么解决

[javascript - 在独立的V8 Javascript引擎中使用Web-Workers](https://www.coder.work/article/2260271)

我认为您应该使用Child Process library for node或其他实现线程的库之一。据我所知，webworker是浏览器的一部分，而不是标准node.js实现的一部分，如果你想要那种API，你需要使用第三方库来实现类似的API。
