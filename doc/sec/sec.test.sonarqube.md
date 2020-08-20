# sonarQube 最佳实践

## 引用

https://owasp.org/www-community/Source_Code_Analysis_Tools

[FindSecBugs](https://find-sec-bugs.github.io/)

https://github.com/find-sec-bugs/find-sec-bugs/wiki/Sonar-Qube-Tutorial
 adminstrator/marketplace/ FindBugs

如果需要加入 brakeman的结果，使用 通用格式
https://docs.sonarqube.org/latest/analysis/generic-issue/

更多第三方
https://docs.sonarqube.org/latest/analysis/external-issues/

## index

+ 中文
+ 阿里 p3c
+ sonar-scanner
+ 安全插件
+ dependency-check
+ 项目加 maven 组件

## updates

./sonarshell.sh udesk_react ssh://git@git.flyudesk.com:9876/udesk/udesk_react.git

## brakeman

只有jenkins的插件

https://plugins.jenkins.io/brakeman/

https://github.com/jenkinsci/brakeman-plugin

## shellcheck
## dependency-check

先看一下 OWASP Dependency 都安装了什么
https://hub.docker.com/r/owasp/dependency-check
https://hub.docker.com/r/owasp/dependency-check/dockerfile
https://github.com/jeremylong/DependencyCheck/blob/main/Dockerfile

```bash
apt-get install -y --no-install-recommends wget ruby mono-runtime
gem install bundle-audit                                         
gem cleanup

dependency-check.sh -s $PWD -f XML -f HTML -n
-n 为不更新
```

中心数据库
https://jeremylong.github.io/DependencyCheck/data/database.html
mirror NVD
https://jeremylong.github.io/DependencyCheck/data/mirrornvd.html

https://bloodzer0.github.io/ossa/other-security-branch/devsecops/sdc/

下载
https://bintray.com/jeremy-long/owasp/dependency-check

和 SonarQ 结合了,有不错的效果

OWASP Dependency-Check插件介绍及使用|CPE格式
https://www.cnblogs.com/shengulong/p/7698428.html
jar第三方组件Dependency-check依赖检查工具
http://www.mianhuage.com/913.html
第三方包依赖检查 [SDL建设-三方依赖库扫描](https://www.cnblogs.com/he1m4n6a/p/9230888.html)

jar第三方组件Dependency-check依赖检查工具
http://www.mianhuage.com/913.html

[错误]无法下载元文件： https : //nvd.nist.gov/feeds/json/cve/1.0/nvdcve-1.0-modified.meta
https://nvd.nist.gov/vuln/data-feeds

### jenv maven
https://github.com/jenv/jenv/issues/232
https://www.codenong.com/30602633/
jenv enable-plugin maven
jenv enable-plugin export

mvn clean install -Dmaven.test.skip=true -l "$projectdir/zz-maven-install-$k.log"
mvn compile
mvn dependency:copy-dependencies --fail-never -l "$projectdir/zz-maven-dependency-$k.log"

mvn sonar:sonar \
  -Dsonar.projectKey=xxx \


### sonar-scanner

sonar-scanner -Dsonar.projectKey=xxx -Dsonar.sources=. -Dsonar.dependencyCheck.reportPath=$PWD/dependency-check-report.xml -Dsonar.dependencyCheck.htmlReportPath=$PWD/dependency-check-report.html   -Dsonar.login=f9e590edfd03f474eb1fa04ae8610342349decc8

https://github.com/jacoco/jacoco

java 安全:

https://techbeacon.com/app-dev-testing/13-tools-checking-security-risk-open-source-dependencies
> https://owasp.org/www-project-dependency-check/

https://www.owasp.org/images/2/2e/OWASP_Code_Review_Guide-V1_1.pdf

In-depth Attack Surface Mapping and Asset Discovery https://www.owasp.org/index.php/OWASP…
https://github.com/OWASP/Amass

    通用型主流漏洞检测与防护
        OWASP https://www.owasp.org/index.php/Main_Page
        http://www.owasp.org.cn/owasp-project
        各流浪 web 漏洞扫描器
        漏洞测试演示平台 bWapp http://www.myh0st.cn/index.php/archives/420/

https://www.owasp.org/index.php/Testing_for_Oracle

+ [安全基线项目](http://www.owasp.org.cn/owasp-project/jixian)

https://github.com/koalaman/shellcheck

## 中文

https://github.com/SonarQubeCommunity/sonar-l10n-zh/releases/
$SONAR_HOME/extensions/plugins
代码质量检测(SonarQube)整合中文版+阿里P3C
https://juejin.im/post/5d79dfa1518825676e3a672c

## 阿里p3c

如何在sonarqube的pmd插件中整合阿里开发规范
https://www.jianshu.com/p/b849175dd38b

https://github.com/purgeteam/sonarqube-start
docker-start/plugin

https://github.com/alibaba/p3c
https://gitee.com/azhao-1981/p3c

这里有一个，但2年前没有更新了2.6
https://github.com/mrprince/sonar-p3c-pmd/releases

遵守的是PMD 
https://github.com/pmd/pmd
pmd.github.io
An extensible multilanguage static code analyzer.
也有ruby的

有个版本兼容性的图
https://github.com/caowenliang/sonar-pmd-p3c

360Qtest团队 静态代码扫描 (一)——PMD 自定义规则入门
https://testerhome.com/topics/4918
【工利其器】必会工具之（八）PMD篇——代码分析工具基本使用
https://www.cnblogs.com/andy-songwei/p/11830812.html
用 PMD 铲除 bug
https://www.ibm.com/developerworks/cn/java/j-pmd/index.html

## 安装

pg + sonarqube8.4.1

```bash
docker pull daocloud.io/postgres
docker pull sonarqube
docker run --name pg -e POSTGRES_USER=sonar -e POSTGRES_PASSWORD=sonar -d postgres
docker run --name sq --link pg -e SONARQUBE_JDBC_URL=jdbc:postgresql://pg:5432/sonar -p 9000:9000 -d sonarqube
```
[soanrqube 官方docker](https://github.com/SonarSource/docker-sonarqube/)

sonarQube 使用内嵌 elasticSearch

```bash
sysctl -w vm.max_map_count=262144
sysctl -w fs.file-max=65536
ulimit -n 65536
ulimit -u 4096
```

重启生效： vi /etc/sysctl.conf 

```bash
vm.max_map_count=262144
fs.file-max=65536
```

建数据库 sonar

[sonarqube安装7.9.1版本](https://blog.csdn.net/weixin_43931358/article/details/102666730)

```bash
sonar.jdbc.username=postgres
sonar.jdbc.password=xxx
sonar.jdbc.url=jdbc:postgresql://localhost/sonar8?currentSchema=my_schema
sonar.jdbc.url=jdbc:postgresql://localhost:5432/sonar8
sonar.web.host=0.0.0.0
sonar.web.port=9000
```

sonarscanner

下载
https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/
https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.4.0.2170-linux.zip

sonar runner 是 scanner的老版本只到2.6,已经不用了

https://docs.sonarqube.org/display/SONARQUBE45/Installing+and+Configuring+SonarQube+Runner
https://docs.sonarqube.org/display/SONARQUBE45/Analyzing+with+SonarQube+Runner
https://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip

```bash
sonar.host.url=http://127.0.0.1:9000
sonar.jdbc.username=postgres
sonar.jdbc.password=xxx
sonar.login=admin
sonar.password=admin
```
SonarQube (2) sonar runner安装配置
https://www.jianshu.com/p/83fd4b0ea8a4

https://www.busybox.net/

[SonarQube 使用手册](https://guide-wiki.daocloud.io/pages/viewpage.action?pageId=31197301)

[Docker搭建SonarQube](https://blog.csdn.net/qaz5209103/article/details/82563053)

版本比较旧 7.6 的，但是插件比较全
https://hub.docker.com/r/owasp/sonarqube
https://github.com/OWASP/sonarqube/blob/master/docker/Dockerfile
一个比较新的分支，但好像少了几个组件
https://github.com/admdoc88/sonarqube/blob/master/docker/Dockerfile

SonarQube安装及踩坑体验
https://bbs.huaweicloud.com/blogs/159762
如何升级到最新LTS版本SonarQube 7.9.1 ？
https://cloud.tencent.com/developer/article/1523216

Sonar可以从以下七个维度检测代码质量，而作为开发人员至少需要处理前5种代码质量问题。

1. 不遵循代码标准（Coding Standards Breach）

        sonar可以通过PMD,CheckStyle,Findbugs等等代码规则检测工具规范代码编写。

2. 潜在的缺陷（Bugs and Potential Bugs)

        sonar可以通过PMD,CheckStyle,Findbugs等等代码规则检测工具检 测出潜在的缺陷。

3. 糟糕的复杂度分布（Bad Distribution of Complexity）

        文件、类、方法等，如果复杂度过高将难以改变，这会使得开发人员 难以理解它们, 且如果没有自动化的单元测试，对于程序中的任何组件的改变都将可能导致需要全面的回归测试。

4. 重复（Duplications）

        显然程序中包含大量复制粘贴的代码是质量低下的，sonar可以展示 源码中重复严重的地方。

5. 注释不足或者过多（Not Enough or Too Many Comments）

        没有注释将使代码可读性变差，特别是当不可避免地出现人员变动 时，程序的可读性将大幅下降 而过多的注释又会使得开发人员将精力过多地花费在阅读注释上，亦违背初衷。

6. 缺乏单元测试（Lack of Unit Tests）

        sonar可以很方便地统计并展示单元测试覆盖率。

7. 糟糕的设计

        通过sonar可以找出循环，展示包与包、类与类之间的相互依赖关系，可以检测自定义的架构规则 通过sonar可以管理第三方的jar包，可以利用LCOM4检测单个任务规则的应用情况， 检测藕合。

https://www.zhihu.com/question/277480517/answer/1194148067
如果你用的是7.7以后的社区版本，那么抱歉，preview mode被取消，原gayhub上有个较强大的支持版本管理软件多分支持续集成的社区插件就不能用了，当然7.7后仍有大佬们在维护另一个 sonarqube-community-branch-plugin 的项目，通过黑科技使得社区版也支持了按branch来做代码质量分析。不过这个比较倒腾，项目master的release只支持到了8.0，8.1，8.2的pr需要自己去下载打成jar。等你把这个插件导入extensions和lib目录重启进程以后发现通过传”sonar.branch.name”的参数是支持ui栏切分支查看分析报告了。但这样又不支持新提交的预览，比如我想在gitlab提交mr时跑一个新提交分析的任务就不能指定分支了。作为一个开源项目是越来越不友好了。。。

默认账号密码： admin/admin

sonar-css-plugin-1.2.0.1325.jar
sonar-dependency-check-plugin-2.0.5.jar
sonar-flex-plugin-2.5.1.1831.jar
sonar-go-plugin-1.6.0.719.jar
sonar-html-plugin-3.2.0.2082.jar
sonar-jacoco-plugin-1.1.0.898.jar
sonar-java-plugin-6.5.1.22586.jar
sonar-javascript-plugin-6.2.1.12157.jar
sonar-kotlin-plugin-1.5.0.315.jar
sonar-python-plugin-2.13.0.7236.jar
sonar-ruby-plugin-1.5.0.315.jar
sonar-scala-plugin-1.5.0.315.jar
sonar-scm-git-plugin-1.12.0.2034.jar
sonar-shellcheck-plugin-2.3.0.jar
sonar-typescript-plugin-2.1.0.4359.jar
sonar-xml-plugin-2.0.1.2020.jar
sonar-yaml-plugin-1.5.1.jar

OWASP 安装的插件
rm -rf $SONARQUBE_HOME/extensions/plugins/* 
cd  $SONARQUBE_HOME/extensions/plugins/
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/scm/git/sonar-scm-git-plugin/$SQ_GIT_VERSION/sonar-scm-git-plugin-$SQ_GIT_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/scm/svn/sonar-scm-svn-plugin/$SQ_SVN_VERSION/sonar-scm-svn-plugin-$SQ_SVN_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/java/sonar-java-plugin/$SQ_JAVA_VERSION/sonar-java-plugin-$SQ_JAVA_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/javascript/sonar-javascript-plugin/$SQ_JS_VERSION/sonar-javascript-plugin-$SQ_JS_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/typescript/sonar-typescript-plugin/$SQ_TS_VERSION/sonar-typescript-plugin-$SQ_TS_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/php/sonar-php-plugin/$SQ_PHP_VERSION/sonar-php-plugin-$SQ_PHP_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/python/sonar-python-plugin/$SQ_PY_VERSION/sonar-python-plugin-$SQ_PY_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/dotnet/sonar-csharp-plugin/$SQ_CSHARP_VERSION/sonar-csharp-plugin-$SQ_CSHARP_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/xml/sonar-xml-plugin/$SQ_XML_VERSION/sonar-xml-plugin-$SQ_XML_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/ldap/sonar-ldap-plugin/$SQ_LDAP_VERSION/sonar-ldap-plugin-$SQ_LDAP_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/github/sonar-github-plugin/$SQ_GITHUB_VERSION/sonar-github-plugin-$SQ_GITHUB_VERSION.jar \
wget --no-verbose https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/go/sonar-go-plugin/$SQ_GO_VERSION/sonar-go-plugin-$SQ_GO_VERSION.jar \
wget --no-verbose https://github.com/spotbugs/sonar-findbugs/releases/download/$SQ_FINDSEC_VERSION/sonar-findbugs-plugin-$SQ_FINDSEC_VERSION.jar \
wget --no-verbose https://github.com/SonarSecurityCommunity/dependency-check-sonar-plugin/releases/download/$SQ_DPCHECK_VERSION/sonar-dependency-check-plugin-$SQ_DPCHECK_VERSION.jar \
wget --no-verbose https://github.com/vaulttec/sonar-auth-oidc/releases/download/v$SQ_OIDC_VERSION/sonar-auth-oidc-plugin-$SQ_OIDC_VERSION.jar \
wget --no-verbose https://github.com/stefanrinderle/softvis3d/releases/download/softvis3d-$SQ_CITY_VERSION/sonar-softvis3d-plugin-$SQ_CITY_VERSION.jar \
rm -rf $SONARQUBE_HOME/bin/*


https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/scm/git/sonar-scm-git-plugin
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/scm/svn/sonar-scm-svn-plugin
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/java/sonar-java-plugin
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/javascript/sonar-javascript-plugin
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/typescript/sonar-typescript-plugin
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/php/sonar-php-plugi
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/python/sonar-python-plugi
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/dotnet/sonar-csharp-plugin
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/xml/sonar-xml-plugi
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/ldap/sonar-ldap-plugi
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/github/sonar-github-plugin
https://repox.jfrog.io/repox/sonarsource-public-builds/org/sonarsource/go/sonar-go-plugi
https://github.com/spotbugs/sonar-findbugs/releases/download/
https://github.com/SonarSecurityCommunity/dependency-check-sonar-plugin
https://github.com/vaulttec/sonar-auth-oidc/releases/download/
https://github.com/stefanrinderle/softvis3d/releases/download/

官方
https://hub.docker.com/_/sonarqube/
TLS：7.9.6
latest: 8.4.1

https://find-sec-bugs.github.io/

Jenkins+Docker 持续集成、部署（CI/CD）项目实践
https://www.jianshu.com/p/98015d389444

Linux系统中切换用户身份su与sudo的用法与实例
https://blog.51cto.com/zebralinux/1369301

代码质量分析工具SonarQube的安装使用、汉化、数据库配置
https://www.jianshu.com/p/b5b3becc39c8

Quickly setup sonarqube for a Ruby on Rails project #22
https://github.com/crohr/ebarnouflant/issues/22
Jenkins的插件
http://updates.jenkins-ci.org/download/plugins/
https://plugins.jenkins.io/brakeman/


sonarqube+brakeman
https://community.sonarsource.com/t/feature-request-add-brakeman-sensor-to-ruby-plugin/8457
you can import the issues from Brakeman into SonarQube using Generic Issue Format 78.
https://docs.sonarqube.org/latest/analysis/generic-issue/

代码安全审计工具
https://www.cnblogs.com/17bdw/p/11359726.html#_label0_2

静态分析和代码质量
https://asmcn.icopy.site/awesome/awesome-static-analysis/
awesome cn
https://asmcn.icopy.site/