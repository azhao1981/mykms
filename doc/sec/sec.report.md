# 渗透测试报告

[公开测试报告集合](https://github.com/juliocesarfort/public-pentesting-reports)

[如何写一份优秀的渗透测试报告](https://zhuanlan.zhihu.com/p/85738501)
[如何写好一份渗透测试报告？](https://www.freebuf.com/articles/security-management/107076.html)

渗透测试是一个科学的过程，像所有科学流程一样，应该是独立可重复的
客户有权要求另外一名测试人员进行复现
给谁看
至少有三种类型的人会阅读你的报告：高级管理人员，IT管理和IT技术人员。
高级管理人员：我们现在到底安不安全
IT管理：对该组织的整体安全性感兴趣，同时也希望确保其特定的部门在测试过程中都没有发现任何重大问题
IT技术人员。受影响系统的名称，该漏洞的严重程度以及如何解决它 以资产和严重程度来进行划分
注：互联网公司应该还有开发人员（IT技术人员）

报告甚至可能最终共享给整个组织
  被触怒的CEO将报告传递给整个组织，作为提高防范社会工程攻击意识的一种方式

封面
  测试公司的名称、标志以及客户的名称
    如“内部网络扫描”或“DMZ测试”测试标题也应该在那里，
  测试时间
  文档的密级
内容提要
  部分一般要限制在一页纸以内
  最后一行应该是一个结论，即明确指出是该系统是安全还是不安全
漏洞总结
测试团队的详细信息
工具列表
  包括版本和功能的简要描述:重复性
工作范围
报告主体
  所有检测到的漏洞细节，如何发现漏洞，如何利用漏洞，以及漏洞利用的可能性
  包括切实贴合的修复建议

1、准备好渗透测试记录

测试记录是执行过程的日志，在每日测试工作结束后，应将当日的成果做成记录，虽然内容不必太过细致，但测试的重点必须记录在案：

·拟检测的项目
·使用的工具或方法
·检测过程描述
·检测结果说明
·过程的重点截图(有结果的画面)


[知名渗透测试厂商团队的报告模板（含下载）](https://www.freebuf.com/sectool/112346.html)

Cure53：德国安全审计和渗透测试服务商，曾发现韩国儿童监控定位APP“智慧警长”（Smart Sheriff）和手机通讯软件Peerio漏洞。
网站：https://cure53.de/

Defuse：一家提供安全审计和密码服务的加拿大安全公司。
网站：https://defuse.ca

FOX-IT: 荷兰安全公司，提供网络威胁管理、安全事件响应和移动安全分析。FOX-IT曾协助荷兰执法部门打击僵尸网络，并于今年6月发现了MoFang APT攻击组织。
网站：https://www.fox-it.com/

Fraunhofer：Fraunhofer SIT，德国安全认证评估公司，专注于电子信息系统和移动软件审计。提供车载软件可信模块TPM 2.0解决方案，公司为德国“工业4.0”技术支撑企业。
网站：https://www.sit.fraunhofer.de/

IOActive：美国网络安全公司，提供渗透测试、逆向、代码审计和硬件安全评估等服务。公司于2014年发布名为《A Wake-up Call for SATCOM Security》的卫星通信报告，声称包括美国军方卫星网络在内的卫星通信终端存在漏洞，可能被黑客入侵。并于去年发现联想更新程序提权漏洞。汽车黑客 Chris Valasek 也曾在IOActive工作过。
网站：http://www.ioactive.com/

IndependentSecurityEvaluators：位于美国马里兰的安全评估公司。Charlie Miller曾在该公司担任过首席安全分析师。
网站：http://www.securityevaluators.com/

LeastAuthority：一家专注于商业数据安全的小型安全公司。
网站：https://leastauthority.com/

Leviathan：Leviathan Security，提供企业攻击检测分析和威胁管理服务。
网站：http://www.leviathansecurity.com/

Matasano Security：美国安全研究公司，专注于企业和供应商漏洞发现、架构审查、渗透测试、逆向工程和代码审查。公司于2008年大意曝光了一个DNS重大漏洞机制和技术细节。
网站：https://www.nccgroup.trust公司于2012年被 NCC Group 收购。

OPM-OIG：美国联邦人事管理局OPM在2015年11月的安全审计报告。2015年6月，OPM声称自身网络遭到网络攻击，将近400万联邦雇员信息被窃。
网站：https://www.opm.gov/

OS3：阿姆斯特丹大学安全研究团队（Open Standards, OpenSoftware and Open Security），Tinder：一款交友聊天软件。
网站：https://www.os3.nl

Offensive Security：一家提供安全培训和渗透测试服务的公司，大名鼎鼎的Backtrack和KALI的发行商。其渗透测试报告模板值得参考。
网站：https://www.offensive-security.com/

Openwall/OpenVZ-audit：Openwall为一个基于LINUX的开源系统项目，同时还提供密码服务，如著名的John the Ripper；OpenVZ是基于Linux平台的操作系统级服务器虚拟化解决方案。
网站：http://www.openwall.com/

ProCheckUp：英国伦敦的一家渗透测试公司，曾发现Check Point旗下防火墙和Adobe公司ColdFusion的多个漏洞。
网站：http://www.procheckup.com/

PwC：普华永道，提供会计事务之外，还提供企业审计、风险管理、信息安全管理等服务
网站：http://www.pwc.com/

Quarkslab：一家总部位于巴黎的安全公司，专注于安全分析和安全培训。曾声称苹果公司自身能拦截iMessage信息。
网站：http://www.quarkslab.com/

Sakurity：2012年成立于香港的安全公司，提供渗透测试、源代码审计和漏洞管理服务。
网站：http://sakurity.com/

SecureLayer7：位于印度马哈拉施特拉邦，提供渗透测试、安全恢复和事件响应的安全公司。
网站：https://securelayer7.net/

TrailOfBits：纽约一家安全咨询公司，2016年3月，FBI与苹果大战中，TrailOfBits曾试图寻找破解 iPhone 系统的方法。
网站：https://www.trailofbits.com/

Veracode ：一家网络安全技术公司，以渗透测试、第三方组件安全和应用程序评估为主。
网站：http://www.veracode.com/

iSEC Partners：美国一家安全服务公司，后被NCC Group收购。
Github：https://github.com/iSECPartners

Mnemonic：挪威威胁检测和安全响应公司。



[如何编写一份专业的渗透测试报告](https://www.anquanke.com/post/id/215031)
目标确认
信息收集
漏洞发现
漏洞利用
权限维持内网渗透
目标获取痕迹清理
编写文档输出报告

概述、漏洞摘要、渗透利用、测试结果、安全建议
特别注意的是：
漏洞描述切忌不可过于简单，一笔带过；
在安全建议部分避免提出没有实际意义的安全建议，比如加强安全意识；
太多复杂的专业术语，比如绕狗、x站等等；
报告结构混乱不堪。


http://www.doc88.com/p-7912041629982.html
https://finsenty54.github.io/2019/03/28/penetration-test-report-interpretation/
https://max.book118.com/html/2017/0613/114524057.shtm
https://zhishihezi.net/

https://github.com/projectcontour/contour/blob/main/Contour_Security_Audit_Dec2020.pdf