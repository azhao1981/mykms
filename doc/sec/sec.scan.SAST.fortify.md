# fortify

网址：http://www.fortify.net/

优点:
  误报率太高导致推送给业务方的漏洞代码不被重视
  fortify没法自定义扫描规则

缺点:
  fotify做代码审计辅助工具还是不错的

## 安全破解

[Fortify白盒神器20.1.1破解版,附license](https://www.shungg.cn/post/301)
 
链接: https://pan.baidu.com/s/1Ui3EUxIjopq2Xbt_TW0Z6A 提取码: xg8t 解压： shungg.cn

点击 Fortify_SCA_and_Apps_20.1.1_windows_x64.exe 安装
1 将 fortify-common-20.1.1.0007.jar 文件放入: \Fortify_SCA_and_Apps_20.1.1\Core\lib 目录 (默认安装位置)
然后转到 \Fortify_SCA_and_Apps_20.1.1\bin\ 并打开 "auditworkbench.cmd”
2 把 rules目录覆盖 Fortify_SCA_and_Apps_20.1.1\Core\config\rules
3 ExternalMetadata 目录覆盖 \Fortify_SCA_and_Apps_20.1.1\Core\config\ExternalMetadata

TB FOrtifY20.1.1!

其它参考： 

[商业级别Fortify白盒神器19.1.0破解版](http://www.shungg.cn/post/256)

[[原创] fortify license 破解 ](https://www.52pojie.cn/thread-1085767-1-1.html)

https://github.com/zsdlove/fortify-license-crack

## 规则破解

[fortify sca rules解密工具](https://c0d3p1ut0s.github.io/fortify-sca-rules%E8%A7%A3%E5%AF%86%E5%B7%A5%E5%85%B7/)

<https://raidforums.com/Thread-Fortify-SCA-16-20-Windows-Version-Patched>

<https://raidforums.com/Thread-Fortify-SCA-19-1-no-crack>
 
[fortify规则库解密之旅](https://nosec.org/home/detail/4470.html)

[fortify sca rules decrypt | fortify规则解密工具 ](https://www.52pojie.cn/thread-783946-1-1.html)

## 其它引用

[banruo：基于的fotify的自动化代码审计系统](https://github.com/yingshang/banruo)

[foritfy的“小技巧”](https://www.liangzl.com/get-article-detail-162456.html)

## 结果分析

[mybatis是如何防止SQL注入的](https://www.cnblogs.com/mmzs/p/8398405.html)

## SAST

### SAST.flowdroid

缺点：慢，多用于逆向工程

https://blogs.uni-paderborn.de/sse/tools/flowdroid/

[Android污点分析工具flowdroid源码简析](https://cloud.tencent.com/developer/article/1047091)

b）本次测试使用的APK是flowdroid本身提供的一个apk：enriched1.apk，位于soot-infoflow-android/testAPKs目录下，该应用包含一个主Activity，下图展示了Mainfest.xml文件的具体内容：
flowdroid无论从算法、实现上，还是从效果上都堪称是一款非常牛逼的产品，但是他也有个非常大的问题就是，太耗内存，分析时间太长，实际使用的价值很低，因此我常常称它为一个实验室的产品。那么有什么优化方法呢，首先需要明白造成flowdroid分析耗时的原因，其实无非就是apk较大时，代码量太大，造成数据流图（ICFG）呈现爆炸式增长，那么很明显的一条思路就是削减ICFG图的体量，我曾经的一个方法是只对几个相关联的文件构造ICFG图，这样就使得ICFG图体量呈现几何式的下降，分析速度肯定明显提升，但是这个方法比较适用于对风险进行验证，并不适用于分析。


[浅入浅出FlowDroid（一）： 简介&基本使用](https://segmentfault.com/a/1190000019977434)

浅入浅出FlowDroid（二）：handler、wrapper与abstraction
https://segmentfault.com/a/1190000021613654

### SAST.GDA FlashFlow

[GDA FlashFlow污点传播分析](https://zhuanlan.zhihu.com/p/132597254)

[GDA数据流分析使用向导](http://www.gda.wiki:9090/dataFlow.php)
ADLab资深攻防专家，安全团队Leader、看雪智能硬件版主，KHG小组组长. 从事安全研究10年以上，长期致力于各种平台下的逆向工程、病毒分析、APT分析、攻击溯源与黑客追踪，同时对车联网安全、物联网安全、设备固件逆向、硬件调试分析等领域均有深入研究

这个好像更牛一些
GDA is a new fast and powerful decompiler in C++(working without Java VM) for the APK, DEX, ODEX, OAT, JAR, AAR, and CLASS file. which supports malicious behavior detection, privacy leaking detection, vulnerability detection, path solving, packer identification, variable tracking, deobfuscation, python&java scripts, device memory extraction, dat…
https://github.com/charles2gan/GDA-android-reversing-Tool

### [ERROR-prone](https://errorprone.info/)

Error-prone,Google出品的Java和Android Bug分析利器
https://droidyue.com/blog/2017/04/09/error-prone-tool-for-java-and-android/

https://github.com/google/error-prone/releases/tag/v2.5.1
https://github.com/tbroyer/gradle-errorprone-plugin

### https://github.com/facebook/infer/releases
https://fbinfer.com/docs/getting-started/

### PMD

PMD 是一个开源的静态代码分析工具。它用于分析一些常见的编程缺陷(未使用的变量、空捕获块、不必要的对象创建等)。

export PMD_JAVA_OPTS=--enable-preview
./run.sh pmd -language java -version 16-preview ...

支持的语言：

Java
JavaScript
Apex      和 Visualforce
Modelica
PLSQL
Apache      Velocity
XML
XSL
Scala
【产品概要】

官方文档：https://pmd.github.io/

Github仓库：https://github.com/pmd/pmd

【技术分析及使用】

安装运行:

下载bin压缩包：https://github.com/pmd/pmd/releases

执行命令：


./run.sh pmd \-d /path/to/待分析工程目录-R /path/to/规则集文件.xml-f text
-f取值：默认 text ，支持如xml 、json 、html 等。详见：

https://pmd.github.io/latest/pmd_userdocs_report_formats.html

【规则集】

编写示例


<?xml version="1.0"?>
<ruleset name="Custom Rules"    xmlns="http://pmd.sourceforge.net/ruleset/2.0.0"    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"    xsi:schemaLocation="http://pmd.sourceforge.net/ruleset/2.0.0 https://pmd.sourceforge.io/ruleset_2_0_0.xsd">
    <description>        My custom rules    </description>    <!-- 规则存放处 -->    <!-- 这里使用了内置的java errorprone规则，检查空catch块 -->    <rule ref="category/java/errorprone.xml/EmptyCatchBlock" /></ruleset>
规则分类

所有 PMD 内置规则都按照以下八个类别进行分类:

Best Practices 最佳实践：这些规则强制执行公认的最佳做法

Code Style 代码风格：这些规则强制执行特定的编码风格

Design 设计：这些规则帮助发现设计问题

Documentation 文档：这些规则与代码文档有关

Error Prone 易出错：用于检测破坏、极度混乱或容易出现运行时错误的构造的规则

Multithreading 多线程：这些规则在处理多个执行线程时标记问题

Performance 工作表现：这些规则标记未达到最佳标准的代码

Security 安全：标记潜在安全缺陷的规则

详见Java的内置规则清单：https://pmd.github.io/latest/pmd_rules_java.html

Security内置规则

Security相关的只有两个：

硬编码密钥

<rule ref="category/java/security.xml/HardCodedCryptoKey" />
不安全的加密初始化向量

<rule ref="category/java/security.xml/InsecureCryptoIv" />
【优劣势】

优势

可分析多种语言的源码；

不需要参与代码编译；

劣势

不支持分析编译后文件；

内置安全规则较为薄弱，SAST所需规则均需要自定义编写；


