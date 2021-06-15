# linux 漏洞修复


USN-4129-1: curl 漏洞

apt-get update && apt-get install curl --only-upgrade
apt-get update && apt-get install libcurl3 --only-upgrade
apt-get update && apt-get install libcurl3-gnutls --only-upgrade

git 现在版本：2.32.0

apt-get update && apt-get install git --only-upgrade
apt-get update && apt-get install git-man --only-upgrade

CVE-2019-1348 3.3 git：通过导出标记流内命令功能覆盖任意路径
CVE-2019-1349 8.8 Microsoft Git for Visual Studio 远程执行代码漏洞
CVE-2019-1350 8.8 Microsoft Visual Studio Git 输入验证漏洞
CVE-2019-1351 7.5 Git将某些路径误认为是相对路径，从而允许在克隆时在工作树之外进行写入
CVE-2019-1352 8.8 Microsoft Visual Studio Git 输入验证漏洞
CVE-2019-1353 9.8 Omron PLC CJ及CS Series身份验证绕过漏洞
https://avd.aliyun.com/detail/CVE-2019-1353?spm=5176.12809143.sas.82.5adc1e43WIUVah
CVE-2019-1354 8.8 Git不拒绝写出文件名中带有反斜杠的跟踪文件
CVE-2019-1387 8.8 带有嵌套子模块的递归克隆中的远程代码执行
CVE-2019-19604 7.8 GitLab 任意命令执行漏洞
https://avd.aliyun.com/detail/CVE-2019-19604?spm=5176.12809143.sas.85.5adc1e43WIUVah
