# 威胁情况

[当我们谈到情报 我们在谈论什么](https://www.anquanke.com/post/id/224628)

**威胁情报**是关于IT或信息资产所面临的现有或潜在威胁的循证知识，包括情境、机制、指标、推论与可行建议，这些知识可为威胁响应提供决策依据。
 IOC (Indicators of Compromise) , 即失陷指标。
 人 -> 真实/虚拟身份
 团伙画像 -> 已知/未知 
 事件画像 -> 已知/未知 TTPs
 资产特征 -> YAPA/协议/PDN  [YARA：抗击恶意代码的神兵利器](https://www.freebuf.com/articles/96903.html)
 IOC -> 域名,ip,hash
[X情报社区](https://x.threatbook.cn/)是中国威胁情报领军企业[微步在线](https://threatbook.cn)旗下的
1. X社区 (https://x.threatbook.cn)
2. Virustotal (www.virustotal.com)
  大名鼎鼎的VT，相信很多安全从业人员应该知道这个网站。
  国内用户的访问速度不理想，同时对于英语不好的同学也不是很友好
3. CuteStat (cutestat.com)
可以查看页面的历史记录，对于一些已经失效了的页面，可能打不开，无法判断是否是恶意域名。可以来这个网站查一下要查的域名的历史页面，可能会有意想不到的收获。比如，某些域名历史是博彩网站，当前失效了，直接查看历史的页面就比较方便，省去很多判断流程。
4. multirbl.valli.org
可以查询IP是否在各大DNS BL的黑名单上。
什么是DNS BL呢？就是说很多网站会收集网络中攻击过别人的IP, 给这些IP打上恶意的标签, 从而不让用户通过DNS解析这些IP。有时候不好判断IP是否是恶意，这个IP在不在DNS BL的黑名单可以作为一种参考。大部分正常的IP不会出现在DNS BL列表中。
5. Alienvault (alienvault.com)
域名是否为恶意相关，可以在Alienvault查一下是否有相关安全机构已经对这个域名做了研究。Alienvault比较具有互联网精神，情报开源，api开放，用户可以根据自身订阅自己感兴趣的安全内容。免费用户有查询次数限制，付费用户没有。
6. RISKIQ社区 (riskiq.com)
RISKIQ社区数据做的比较全，基本上基于一个域名或者IP，你能想到的相关信息都涵盖了，可惜数据虽然多但不是都有用，需要搜索者自己有判断信息的能力，否则可能沦陷到海量的信息中不知道该用什么。
主要讲究的是大而全，甚至连一个域名内的内链、外链是否在其他网站中出现过等相关资料都有。优点在于资料多，缺点也在于资料多，信息多反而想要获取有用的信息变得比较难。对于域名的子域名、证书、域名下内容模块等方面做的比较好，可以作为参考。

奇安信 https://ti.qianxin.com/ 这个起码对 hash 支持更好一些
[安恒情报中心](https://ti.dbappsecurity.com.cn/) 
[云沙箱](https://mac-cloud.riskivy.com/detect)  只有对病毒
[绿盟威胁情报中心](https://nti.nsfocus.com/),是关于事件的


安全威胁情报产品和服务市场指南之厂商介绍 
https://www.sohu.com/a/162410641_99894478

威胁情报简介及市场浅析
https://www.freebuf.com/column/136763.html

谈谈我眼中的黑灰产威胁情报
https://www.freebuf.com/articles/neopoints/242980.html
> 为什么要作，应该有什么产出，黑灰产注册示例
Jeopardize：一款针对钓鱼域名的低功耗威胁情报&响应工具
https://www.freebuf.com/sectool/231977.html
用于网络威胁情报查找的浏览器插件
https://twitter.com/Peerlyst/status/1248987946059005952