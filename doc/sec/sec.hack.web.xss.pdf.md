# xss for pdf 

pdf 可以在页面属性中加入 js，在页面打开或关闭时运行，在 chrome pdf viewer 中会被执行

DESC:

pdf 可以包含并 xss

[Pdf如何使用XSS,pdf,xss](https://www.pythonf.cn/read/161569)

https://github.com/osnr/horrifying-pdf-experiments

[PDF XSS](https://www.shuzhiduo.com/A/WpdKyvvAJV/)

迅捷 PDF 编辑器
页面属性
3、在“页面属性”对话框单击“动作”标签，再从“选择动作”下拉菜单中选择“运行 JavaScript”命令，然后单击【添加】按钮，弹出 JavaScript 编辑器对话框
andripwn/poc.js
https://gist.github.com/andripwn/671ef1aa6c535d9168c900524bfb84e1?short_path=8631f10

修复方法
　　而作为网站管理员或开发者，可以选择强迫浏览器下载 PDF 文件，而不是提供在线浏览等，或修改 Web 服务器配置的 header 和相关属性。
　　可以使用第三方插件解析pdf，不用chrome自带的pdf解析就行，https://github.com/adobe-type-tools/cmap-resources

fix:

注: 预览服务是没有弹出的
两种方法:
1 过滤,不让上传
2 不运行js
3 默认禁止打开pdf， 
  iframe 能打开吗？ A：能，但如果是下载，那也会直接下载
  pdf 还有别的几种打开方式： < object >、< embed >、< iframe > 参考： https://blog.csdn.net/qappleh/article/details/80250492

2 不运行 js 
[内容安全政策](https://developers.google.com/web/fundamentals/security/csp) 

[CSP: sandbox](https://cloud.tencent.com/developer/section/1189875)

  https://stackoverflow.com/questions/6272096/what-is-the-common-way-to-say-no-javascript-in-the-request-header
  csp,但好像 oss不能设置 csp
  Content-Security-Policy: sandbox

阿里好像不支持修改 Content-Security-Policy, 下面两个文件都不包括 Content-Security-Policy 的修改
[设置文件元信息](https://help.aliyun.com/document_detail/31913.html)
[PutObject](https://help.aliyun.com/document_detail/31978.html)

Web 安全之内容安全策略 (CSP)
 https://developer.aliyun.com/article/314
  CSP 可以由两种方式指定：HTTP Header 和 HTML。HTTP 是在 HTTP 由增加 Header 来指定，而 HTML 级别则由 Meta 标签指定。

CSP 有两类：Content-Security-Policy 和 Content-Security-Policy-Report-Only。（大小写无关）

HTTP header :
"Content-Security-Policy:" 策略
"Content-Security-Policy-Report-Only:" 策略
HTTP Content-Security-Policy 头可以指定一个或多个资源是安全的，而Content-Security-Policy-Report-Only则是允许服务器检查（非强制）一个策略。多个头的策略定义由优先采用最先定义的。

HTML Meta :
<meta http-equiv="content-security-policy" content="策略">
<meta http-equiv="content-security-policy-report-only" content="策略">

https://stackoverflow.com/questions/29342542/how-can-i-extract-a-javascript-from-a-pdf-file-with-a-command-line-tool

怎么读取:
[在Python中读取PDF属性/元数据](https://cloud.tencent.com/developer/ask/131308)
这两个只看到读取 文件属性,需要看 页面属性 动作

pip install pdfminer

pip install PyPDF2

[Python 深入浅出 - PyPDF2 处理 PDF 文件](https://blog.csdn.net/xingxtao/article/details/79056341)

https://github1s.com/mstamy2/PyPDF2/blob/HEAD/PyPDF2/pdf.py


如果需要在函数计算安全依赖，见：

[为函数安装第三方依赖](https://help.aliyun.com/document_detail/74571.html)

[函数计算安装依赖库方法小结](https://developer.aliyun.com/article/602147)

其他可以操作的库:

[python解析并读取PDF文件：函数总结](https://blog.csdn.net/qq_27586341/article/details/105432400)

[bypassWaf_xss](http://github.wh0ale.xyz/2018/12/30/2018-12-30-BypassWaf_xss/)