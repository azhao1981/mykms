# java 开发

## java多版本管理 jenv

[官网](https://www.jenv.be/)

```basb
git clone https://github.com/jenv/jenv.git ~/.jenv

echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(jenv init -)"' >> ~/.bash_profile

jenv -h
```

## 下载安装

[java 官网](https://www.oracle.com/java) 下载相对不太友好,详见 [为什么下载 jdk 这么难?](https://www.v2ex.com/t/608785)

更新/2020/10/27 还是要求账号 见 <https://www.oracle.com/java/technologies/>

下载这些非官方的版本可能会更友好一些：

[华为镜像](https://mirrors.huaweicloud.com/java/jdk/)

[Amazon Corretto | 开放 Java 开发工具包 (OpenJDK) 的免费、多平台、生产就绪型发行版 | 推荐](https://aws.amazon.com/cn/corretto/)

[adobe java ](https://www.adobe.com/support/coldfusion/downloads.html)

也可以使用 jenv 直接安装，但在国内使用jenv下载速度也是很感人的

其它参考：

[Oracle与OpenJDK之间的区别](https://juejin.im/post/5ca1c747e51d45761c7441fa)

https://aur.archlinux.org/packages/jdk/
https://aur.archlinux.org/packages/jdk8/

Linux/mac 配置

```bash
vi /etc/profile
export JAVA_HOME=/usr/java/jdk1.8.0_221
export CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$PATH:$JAVA_HOME/bin
```

## 编译工具

### vscode 和配置

## Hello world

public class **Hello** 必须和文件名一样 **Hello**.java,且大小写敏感

但public不是必须的

错误: 在类 Hello 中找不到 main 方法, 请将 main 方法定义为:
   public static void main(String[] args)
否则 JavaFX 应用程序类必须扩展javafx.application.Application

### public static void main(String[] args)

都是必须的

## maven 及国内镜像

[mvn镜像加速|maven国内镜像配置](https://www.cnblogs.com/sunweiye/p/11103388.html)

```bash
sudo apt update
sudo apt install maven -y

vim ~/.m2/settings.xml
```
## idea

第一弹！安排！安利10个让你爽到爆的IDEA必备插件！
https://zhuanlan.zhihu.com/p/131511544


Crtl + D 

而在IDEA中：

选中下一个相同内容的快捷键是：Alt + J 

选中所有相同内容的快捷键是：Ctrl + Shift + Alt + J 

ctrl+w = ctrl+F4
## 常见 组件/类库 使用

### jetty

[jetty中文教程](https://www.orchome.com/58)

[jetty初学者教程](https://www.soosmart.com/topic/909.html)

### spring jdbcTemplate

[JDBC MySQL任意文件读取中的一些坑](https://www.freebuf.com/articles/web/251626.html)

https://mkyong.com/spring/spring-jdbctemplate-querying-examples/

https://www.codejava.net/frameworks/spring-boot/connect-to-mysql-database-examples

### spring Boot

spring boot
https://medium.com/@ahmetkapusuz/spring-boot-hello-world-application-with-intellij-idea-1524c68ddaae
https://www.jetbrains.com/help/idea/your-first-spring-application.html#create-new-spring-boot-project

[官方文档](https://spring.io/guides/gs/spring-boot/)

安装 Plugins/marketting/spring Assisstant
开始/spring Assisstant/默认/web/spring web
打开 src/main/java/com.xxx.hello/xxx.java
  run 当前应用名

HelloWorld

主类添加 @RestController

添加requestMapping()

public void xxx(@RequestParam(value="name", defaultValue="world") String name) { 
  return "hello" + name; 
}

mvn spring-boot:run

修改 shift+F10
添加：
src/main/resources/static/index.html

## 数据库
甚麼是 JDBC、ORM、 JPA、ORM框架、Hibernate
https://medium.com/learning-from-jhipster/13-%E7%94%9A%E9%BA%BC%E6%98%AF-jdbc-orm-jpa-orm%E6%A1%86%E6%9E%B6-hibernate-c762a8c5e112

### JDBC

### ORM

而目前在 Java 中，相對常見或常用的 ORM 框架有：
Hibernate
MyBatis
Spring Data JPA
Open JPA
EclipseLink
Toplink

### hibernate

http://hibernate.org/

http://hibernate.org/orm/

[Hibernate框架的概述](https://blog.csdn.net/yerenyuan_pku/article/details/64209343)

https://www.w3cschool.cn/hibernate/



## log4j

已经是老版本,2不能用
https://www.w3cschool.cn/java/log4j-installation.html

[在Maven中使用log4j](https://www.jianshu.com/p/a4aca7746d25)

https://logging.apache.org/log4j/2.x/manual/configuration.html

https://logging.apache.org/log4j/2.x/maven-artifacts.html

https://logging.apache.org/log4j/2.x/download.html

[idea配置log4j](https://blog.csdn.net/qq_32253371/article/details/92977180)

[idea如何添加log4j日志？](https://jingyan.baidu.com/article/e4d08ffd90002a0fd3f60d59.html)

[IDEA2020.3破解，IDEA2020.3破解教程，IDEA激活码_持续更新](https://tech.souyunku.com/?p=15076)

[Java为什么要设置环境变量、JAVA_HOME](https://blog.csdn.net/u010297957/article/details/51334951)

### JavaFX

### java.maven

Maven介绍
https://www.liaoxuefeng.com/wiki/1252599548343744/1309301146648610

Maven 教程
https://www.runoob.com/maven/maven-tutorial.html

download
https://maven.apache.org/

https://www.runoob.com/maven/maven-creating-project.html

mvn archetype:generate "-DgroupId=com.weiz.hello" "-DartifactId=HelloMaven" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DinteractiveMode=false"

maven.windows

Maven的安装配置与使用（windows+idea）
https://segmentfault.com/a/1190000022205888

## roadmap 技术树

java 安装
vscode 安装
Hello.java
.m/settings.xml
maven archetype:generate
.vscode/settings.json

ERROR: 
Build path specifies execution environment J2SE-1.5. There are no JREs installed in the workspace that are strictly compatible with this environment. 

IDEA中Maven配置JDK11进行编译
https://mingshan.fun/2018/10/13/compile-by-jdk11/

```xml
   <!-- 加上这个就问题就没有了，没有加 maven-compiler-plugin -->
   <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <maven.compiler.source>11</maven.compiler.source>
    <maven.compiler.target>11</maven.compiler.target>
  </properties>

  <build>
  <finalName>java11-tutorial</finalName>
  <plugins>
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-compiler-plugin</artifactId>
      <configuration>
        <source>11</source>
        <target>11</target>
      </configuration>
    </plugin>
  </plugins>
</build>
```

### junit

maven默认是 3.8.1 !!!!

#### ERROR:

Error: Failed to parse the JUnit launch arguments.Error: Failed to parse the JUnit launch arguments.
不能直接在vscode 上跑 run test

https://www.freecodecamp.org/news/cjn-junit-test-with-maven-in-vscode/
这里面还有别的工具|参考

https://blog.csdn.net/weixin_44297922/article/details/105466803
> https://blog.csdn.net/ME__WE/article/details/104887568
> https://github.com/junit-team/junit4/wiki/Download-and-Install

junit-platform-console-standalone.jar 包 方便查看测试类的输出。

  <version>4.13</version>

junit.jar
hamcrest-core.jar

+ [ ] maven 里的数据为什么不直接生效，需要在lib和.classpath里添加？
  + [ ] vscode的问题，他不认？ 用idea试一下， 打开会提示一个maven的配置，一个eclisp的配置，要哪个，maven
    + [x] pom.xml 里写 3.8.1, lib里是 4.1.3,vscode是4.1.3  idea 用 maven 后 reload project后，3.8.1
    + [ ] vscode用的是eclipse 的配置，.project和.classpath,怎么直接用maven,不需要别的配置

No debug adapter, can not send 'evaluate'

+ 要手动 ctrl + shift+p / show java test report

#### @test
这是 junit5 的功能
ERROR
test cannot be resolved to a typeJava(16777218)

Java Test RunnerPreview

#### [JUnit 5](https://junit.org/junit5/)

https://github.com/junit-team/junit5/

https://howtodoinjava.com/junit5/junit5-maven-dependency/

https://blog.jetbrains.com/idea/2016/08/using-junit-5-in-intellij-idea/

JUnit5使用教程及简单的测试案例(Idea,Android studio)
https://blog.csdn.net/weixin_40099554/article/details/80387582

```bash
mvn archetype:generate "-DgroupId=com.weiz.hello" "-DartifactId=HelloJunit" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DinteractiveMode=false"
```

```xml
<dependency>
  <groupId>org.junit.jupiter</groupId>
  <artifactId>junit-jupiter</artifactId>
  <version>${junit-jupiter.version}</version>
  <scope>test</scope>
</dependency>
```

#### 变量 ${junit-jupiter.version}

```xml
<properties>
  <junit-jupiter.version>2.2.2</junit-jupiter.version>
</properties>
```

<version>${junit-jupiter.version}</version>
```
也有一些maven的"系统变量"

maven变量属性（${} properties）
https://blog.csdn.net/fly910905/article/details/79119349

#### java: 错误: 不支持发行版本 5

maven报错：不再支持源选项 5。请使用 6 或更高版本。
https://blog.csdn.net/moshowgame/article/details/81369327

```xml
  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <maven.compiler.encoding>UTF-8</maven.compiler.encoding>
    <java.version>11</java.version>
    <maven.compiler.source>11</maven.compiler.source>
    <maven.compiler.target>11</maven.compiler.target>
  </properties>
```

也可以配置idea的settings,但是更推荐改pom.xml

之后,可以右键文件,run test了

https://www.jetbrains.com/help/idea/configuring-project-and-ide-settings.html

#### mvn test

在Maven项目中运行JUnit 5测试用例
https://waylau.com/running-junit5-tests-with-maven/

需要 mvn test 跑用例,只要 maven-surefire-plugin就可以了,后面那个不知道干什么的?
http://maven.apache.org/surefire/maven-surefire-plugin/plugin-info.html
学习Maven之Maven Surefire Plugin(JUnit篇)
https://www.cnblogs.com/qyf404/p/5013694.html

http://maven.apache.org/surefire/maven-failsafe-plugin/plugin-info.html
Maven 如何配置Integration Test
https://www.jianshu.com/p/e638d64b6955

```xml
<dependencies>
    <dependency>
      <groupId>org.junit.jupiter</groupId>
      <artifactId>junit-jupiter</artifactId>
      <version>5.6.2</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
  <build>
    <plugins>
      <plugin>
        <artifactId>maven-surefire-plugin</artifactId>
        <version>3.0.0-M5</version>
      </plugin>
      <plugin>
        <artifactId>maven-failsafe-plugin</artifactId>
        <version>3.0.0-M5</version>
      </plugin>
    </plugins>
  </build>
```

### tomcat 等保要求 嵌入式

等保2.0涉及的Apache Tomcat中间件（上）
https://www.freebuf.com/articles/network/245608.html
等保2.0涉及的Apache Tomcat中间件（下）
https://www.freebuf.com/articles/system/247984.html

### idea+tomcat

idea CE 是没有tomcat支持的

CE没有默认的TOMCAT服务，解决方法看下面的文章，建议： 使用 `mvn tomcat:run mvn jetty:run`

https://stackoverflow.com/questions/22047860/tomcat-in-intellij-idea-community-edition/38266010
  installing [Smart Tomcat plugin](https://plugins.jetbrains.com/plugin/9492)
  installing IDEA [Jetty Runner plugin](https://plugins.jetbrains.com/plugin/7505) 
  running the application server from Maven, Gradle, whatever, as outlined in the other answers.

其中： stmart tomcat

[Idea上配置Smart Tomcat](https://blog.csdn.net/weixin_42514162/article/details/110287324)

IntelliJ IDEA Community Edition（社区版）不支持Tomcat，如果不想花钱购买Ultimate版本，也不想使用Eclipse，可以尝试通过以下方式使IDEA社区版支持Tomcat。

<https://github.com/Adrninistrator/IDEA-IC-Tomcat>

[使用IntelliJ IDEA配置Tomcat（入门）|但这个版本是ultra的](https://www.jianshu.com/p/b4b42a90b2e9)

### Spring Boot Extension

## vscode
vscode 搭建java spring maven开发环境
https://juejin.im/post/6844904047661547534

VSCode搭建Java开发运行环境
https://www.cnblogs.com/zhaoshizi/p/9524421.html
Java project management in VS Code
https://code.visualstudio.com/docs/java/java-project

https://code.visualstudio.com/docs/java/java-build

[如何保护你的密码：应用侧数据库&redis密码加密实践| java](https://www.freebuf.com/articles/database/255263.html) 
https://github.com/ulisesbocchio/jasypt-spring-boot

## Gradle

国内开源镜像一览
https://bambrow.com/20210702-domestic-images/

init.gradle
```gradle
allprojects {
    repositories {
        def ALIYUN_REPOSITORY_URL = 'https://maven.aliyun.com/repository/public'
        all { ArtifactRepository repo ->
            if (repo instanceof MavenArtifactRepository) {
                def url = repo.url.toString()
                if (url.startsWith('https://repo1.maven.org/maven2')) {
                    project.logger.lifecycle "Repository ${repo.url} replaced by $ALIYUN_REPOSITORY_URL."
                    remove repo
                }
            }
        }
        maven { url ALIYUN_REPOSITORY_URL }
    }
}
```

## 如何绑定SDK版本和Maven/Gradle


## java 版本

Java 版本号含义和更新规则
http://xingchaovv.com/2019/10/07/465/

https://en.wikipedia.org/wiki/Java_version_history


这个个人网站的java程序不错,格式好
https://mkyong.com/junit5/junit-5-maven-examples

## kite

java.lang.IncompatibleClassChangeError: Expected static method 'void com.intellij.psi.impl.PsiDocumentManagerBase.addRunOnCommit(com.intellij.openapi.editor.Document, java.lang.Runnable)'

## 诊断

<https://github.com/oldmanpushcart/greys-anatomy>

## JDK 11中将会加入令人惊叹的ZGC(不到2毫秒)

https://mp.weixin.qq.com/s/zvMeukRQ9xs32tFoGeMgGQ
