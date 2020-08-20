# honeypots 蜜罐

蜜罐技术本质上是一种对攻击方进行欺骗的技术，
通过布置一些作为诱饵的主机、网络服务或者信息，诱使攻击方对它们实施攻击，
从而可以对攻击行为进行捕获和分析，了解攻击方所使用的工具与方法，推测攻击意图和动机，
能够让防御方清晰地了解他们所面对的安全威胁，并通过技术和管理手段来增强实际系统的安全防护能力。

[awesome-honeypots|蜜罐开源技术收集](https://github.com/paralax/awesome-honeypots)

## 蜜罐指纹收集

+ [ ] ip to kong, 把收集到的攻击ip直接传入api gateway ,如kong中，形成自动化

## 引用

[红队必备：WEB蜜罐识别阻断插件](https://www.freebuf.com/articles/web/246938.html)
jsonhijack
https://github.com/cnrstar/anti-honeypot

[记一次蜜罐溯源](https://www.freebuf.com/articles/web/246060.html)

https://www.freebuf.com/sectool/135032.html 构建一个高交互型的难以发现的蜜罐
两款开源工具sysdig和falco
[sysdig](http://www.sysdig.org/)
可以捕获并保存当前正在运行的Linux的系统状态及活动。因此这对于  我们进行相关进程、网络和I/O活动的离线分析，提供了极大的便利
[falco](https://sysdig.com/opensource/falco/) 
活动行为监视器，用于检测和发现应用程序中的异常活动

作为一个合格的蜜罐服务器，都应该具有文件捕获和 cifs-utils 包

[linux中的CIFS共享服务](https://blog.csdn.net/Hguan07/article/details/77278242)

CIFS是实现文件共享服务的一种文件系统，主要用于实现windows系统中的文件共享，linux系统中用的比较少
linux系统中利用CIFS文件系统实现文件共享，需要安装samba服务：

简易的chef cookbook: 快速部署sysdig和falco
https://github.com/mwrlabs/honeypot_recipes

当cookbook成功执行后，sysdig将开启连续捕获模式，以便持续捕获系统的运行状态和活动。
同时falco也开始运行，将所有警报发送到 **syslog**

[chef-dk, Chef平台的简化开发和部署工作流](https://www.kutu66.com/GitHub/article_134382)

https://github.com/threatstream/mhn 现代蜜网，集成了多种蜜罐的安装脚本，可以快速部署、使用，也能够快速的从节点收集数据
[Snort](https://snort.org/), 
[Cowrie](https://github.com/cowrie/cowrie), 
Cowrie SSH/Telnet Honeypot
[Dionaea](https://github.com/DinoTools/dionaea), 
[glastopf](https://github.com/mushorg/glastopf)
Web Application Honeypot

https://github.com/dtag-dev-sec/tpotce T-POT，里面使用 docker 技术实现多个蜜罐组合，配合 ELK 进行研究与数据捕获
https://www.freebuf.com/sectool/190840.html T-Pot 多蜜罐平台使用心法
https://github.com/n3uz/t-pot-autoinstall 将 fork 的 T-POT 蜜罐的一键安装脚本替换为国内加速镜像

Web 蜜罐内网监测
https://github.com/micheloosterhof/cowrie py2，使用 ELK（ElasticSearch，LogStash，Kibana）进行数据分析，目前支持 ssh，telnet，sftp 等协议
https://github.com/mushorg/snare py3，web 安全蜜罐，可克隆指定 Web 页面
https://github.com/honeynet/beeswarm py，使用 agent 探针与蜜罐进行实时交互来引诱攻击者
https://github.com/thinkst/opencanary PY2,SNMP\RDP\SAMBA 蜜罐
https://github.com/p1r06u3/opencanary_web PY,TORNADO,内网低交互蜜罐。支持自动化安装，目前支持常见的 16 中协议，现为探针/蜜罐-管理的架构，可以考虑二次开发为探针-沙盒-管理的架构
https://github.com/p1r06u3/opencanary_web
https://github.com/Cymmetria 知名欺骗防御蜜罐组织。Struct、weblogic、telnet、Cisco ASA、Micros 等仿真蜜罐
https://github.com/Cymmetria/honeycomb Cymmetria 公司开源蜜罐框架，低交互
https://github.com/honeytrap/honeytrap 可扩展蜜罐框架，支持探针部署与高交互蜜罐
https://gosecure.net/2018/12/19/rdp-man-in-the-middle-smile-youre-on-camera/ RDP MITM，打造可记录图像和按键的 RDP 蜜罐（https://github.com/gosecure/pyrdp）
摄像头蜜罐
https://github.com/alexbredo/honeypot-camera py，摄像头蜜罐。tornado 模拟 WEB 服务，图片代替视频，可以考虑后期多加点图片和按钮
https://github.com/EasyDarwin/EasyIPCamera C，RTSP 服务器组件用以构建摄像头蜜罐

工控蜜罐
https://github.com/sjhilt/GasPot 模拟油电燃气工控系统
https://github.com/djformby/GRFICS IoT 工业仿真系统模拟框架，采用 MODBUS 协议对 PLC 虚拟机监视和控制
https://github.com/RabitW/IoTSecurityNAT IoT 测试系统，方便快速接入各种设备，进行安全测试
https://github.com/mushorg/conpot 针对 ICS/SCADA 的低交互工控蜜罐，模拟 Modbus 和 S7comm
逆向相关
https://www.peerlyst.com/posts/resource-learning-how-to-reverse-malware-a-guide 恶意软件逆向指南和工具的集合
https://github.com/ReFirmLabs/binwalk 二进制 pwn 文件自动化逆向，拥有多种插件
https://github.com/angr/angr 一个具有动态符号执行和静态分析的二进制分析工具
https://github.com/endgameinc/xori 自定义反汇编框架
https://down.52pojie.cn/ 吾爱破解爱盘工具包
https://github.com/blacknbunny/peanalyzer32 PE 文件分析和反汇编工具
https://github.com/DominicBreuker/pspy 不用 root 权限就可以监控进程运行

[用Brim分析蜜罐流量不亦乐乎](https://www.freebuf.com/articles/ics-articles/245568.html)

[全端口蜜罐的部署过程与数据分析](https://www.freebuf.com/articles/network/240041.html)

[Cowrie蜜罐的Docker部署过程及Elasticsearch+Kibana可视化](https://www.freebuf.com/articles/network/236525.html)

[域渗透：使用蜜罐检测出Kerberoast攻击](https://www.freebuf.com/articles/system/232669.html)

[一种工控蜜罐识别与反识别技术研究与应用实践](https://www.freebuf.com/articles/ics-articles/230402.html)

[蜜罐调研与内网安全](https://xz.aliyun.com/t/7294)

[从被入侵到蜜罐搭建再到日志审计](https://www.anquanke.com/post/id/197662)

[攻防演练中红队如何识别蜜罐保护自己](https://www.freebuf.com/articles/network/236485.html)

[记一次Vulnstack靶场内网渗透（二）](https://www.freebuf.com/articles/network/244704.html)

[HFish：企业安全测试主动攻击型蜜罐钓鱼框架系统](https://www.freebuf.com/sectool/210318.html)

[HFish蜜罐使用心得](https://www.freebuf.com/vuls/220646.html)

[基于开源蜜罐的实践与功能扩展](https://www.freebuf.com/sectool/217256.html)

TODO: 可以用这个记录一下时下的肉机 ip.
[在Kubernetes中创建与部署蜜罐](https://www.freebuf.com/articles/network/208895.html)
