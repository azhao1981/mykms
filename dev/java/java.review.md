TODO：深入
如果需要解析 XML 文件，确保实体解析（entity parsing）是关闭的以避免 XXE 攻击。	
如果需要解析 XML 文件，确保实体扩展（entity expansion）是关闭的以避免通过指数实体扩展攻击实现的 Billion Laughs/XML bomb。	

entity parsing 对于java是什么、怎么实现、怎么关闭？

这里有描述：
其它java代码审计

扩展： https://github.com/zhaoweiho/awesome-java-security-checklist
java代码审计文章集合
https://www.cnblogs.com/r00tuser/p/10577571.html
[Java代码审计](https://chenergy1991.github.io/2019/03/24/%E5%A5%BD%E7%9A%84%E9%93%BE%E6%8E%A5/)
  [【绿盟大讲堂】代码审计指南](http://blog.nsfocus.net/code-audit-instruction/)
  [【绿盟大讲堂】 渗透测试流程解析](https://www.shangmayuan.com/a/81c98471b4da476aa78b9075.html)
[Java代码审计](https://yinwc.github.io/2020/01/03/Java%E4%BB%A3%E7%A0%81%E5%AE%A1%E8%AE%A1/)