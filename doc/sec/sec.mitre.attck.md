# ATT&CK

攻防最前线：ATT&CK模型解读
https://www.freebuf.com/articles/ics-articles/254809.html
EDR 即 Endpoint Detection and Response (终端**探测与响应**)
EPP（ Endpoint Protection Platform）
三种网络攻击模型：

高抽象模型：Lockheed Martin 的 Cyber Kill Chain 模型、Microsft 的 STRIDE 模型等
  Reconnaissance（侦查）→Weaponization（武器化）→ Delivery（传输）→Exploitation（挖掘）
  → Installation（植入）→ C2 : Command & Control（命令和控制）
  → Actions on Objectives（操作目标）
中抽象模型：Mitre 的 ATT&CK 模型
低抽象模型：漏洞数据集、恶意软件数据集等
Reconnaissiance
Weaponization
Delivery
Exploitation
Installation
Command & Control
Action on Objectives

Enterprise 和 Mobile
Key objects
  Tactics TAXXXX
    Initial Access（ID : TA 0001)
    Execution（ID : TA 0002）
  Techniques TXXXX
  Groups ID：GXXXX
    整理了一些世界上著名的黑客组织（Groups）https://attack.mitre.org/groups/
  Software ID：SXXXX
    Software即攻击者经常用的软件，包括工具、组件和恶意软件 https://attack.mitre.org/software/

从知识盒子进入学习
https://zhishihezi.net/box/91c93f609d9dd7b7ca15e0ad2ad520d8
基于 ATT&CK 的 APT 威胁跟踪和狩猎
https://www.secpulse.com/archives/124757.html
用颜色划分攻击难度
https://www.tripwire.com/state-of-security/mitre-framework/using-attck-teacher/
![](https://3b6xlt3iddqmuq5vy2w0s5d3-wpengine.netdna-ssl.com/state-of-security/wp-content/uploads/sites/3/Travis-Smith-blog.png)


https://mitre-attack.github.io/attack-navigator/enterprise/
https://github.com/NomadCN112/Chinese-translation-ATT-CK-framework
http://vulhub.org.cn/attack

ATT&CK框架：攻击者最常用的TOP7攻击技术及其检测策略
https://www.freebuf.com/articles/network/223122.html

ATTCK-PenTester-Book：根据ATT&CK知识体系编制的长达400页的渗透手册
https://www.freebuf.com/articles/system/226119.html
https://github.com/azhao1981/ATTCK-PenTester-Book
https://github.com/Dm2333/ATTCK-PenTester-Book/

手工打造基于ATT&CK矩阵的EDR系统
https://www.freebuf.com/articles/system/239107.html

一文详解云上容器ATT&CK矩阵|容器安全
https://www.freebuf.com/articles/container/240139.html

Attacker-Group-Predictor：一款利用 MITRE ATT&CK 矩阵从使用的攻击技术和软件预测攻击组织的工具
https://www.kitploit.com/2020/06/attacker-group-predictor-tool-to.html

Elemental：一款功能强大的MITRE ATT&CK威胁库
https://www.freebuf.com/articles/network/235740.html

浅谈ATT&CK对提升主机EDR检测能力的探索
https://www.freebuf.com/articles/es/223972.html

自动化逆向辅助利器：Capa
https://www.freebuf.com/sectool/244702.html
工具运行的结果如下，它显示了当前样本的恶意行为，以及对应的ATT&CK向量，如：混淆绕过、系统信息探测、C&C连接、持久化驻留等。

## navigator

https://gitee.com/azhao-1981/attack-navigator

git clone git@gitee.com:azhao-1981/attack-navigator.git

A set of Zeek scripts to detect ATT&CK techniques.
https://github.com/mitre-attack/bzar

Threat Report ATT&CK™ Mapping (TRAM) is a tool to aid analyst in mapping finished reports to ATT&CK.
https://github.com/mitre-attack/tram

CARET - A tool for viewing cyber analytic relationships
https://github.com/mitre-attack/caret

A collection of red team and adversary emulation resources developed and released by MITRE.
https://github.com/mitre-attack/attack-arsenal

Cyber Analytics Repository
https://github.com/mitre-attack/car

ATT&CK Evaluations website
https://github.com/mitre-attack/attack-evals

Scripts and a (future) library to improve users' interactions with the ATT&CK content
https://github.com/mitre-attack/attack-scripts
