# Code Review

[大家的公司的 Code Review 都是怎么做的？遇到过哪些问题？](https://www.zhihu.com/question/41089988)
[Gerrit](https://gitee.com/mirrors/Gerrit)：Google 开源的 git 代码审查工具；
GitHub：程序员应该很熟悉了，上面的 "Pull Request" 在代码审查这里很好用；
[LGTM](https://lgtm.com/)：可用于 GitHub 和 Bitbucket 的 PR 代码安全漏洞和代码质量审查辅助工具；
  在线的,对开源免费,可以把 https://github.com/ruby-china/homeland 加进去
[Phabricator](https://www.phacility.com/phabricator/)：Facebook 开源的 git/mercurial/svn 代码审查工具； 
  https://github.com/phacility/phabricator  php
  [有人实践过 Phabricator 以及 Arcanist 作为 code review 的工具么？](https://www.zhihu.com/question/19977889)

Crucible：Atlassian 内部代码审查工具；
[PullRequest](https://www.pullrequest.com/)：GitHub pull requests 代码审查辅助工具；
Pull Reminders：GitHub 上有 PR 需要你审核，该插件自动通过 Slack 提醒你；
[Reviewable](https://reviewable.io/)：基于 GitHub pull requests 的代码审查辅助工具；
  在线,开源项目免费
[Sider](https://sider.review/)：GitHub 自动代码审查辅助工具；
  在线,开源项目免费
[Upsource](https://www.jetbrains.com/upsource/)：JetBrain 内部部署的 git/mercurial/perforce/svn 代码审查工具。

Gerrit是Gerrit社区的一个开源代码审查软件。
Gerrit 2.15.21之前版本，以及2.16.25、3.0.15、3.1.10、3.2.5版本存在信息泄露漏洞。该漏洞源于程序未对REST API进行正确检查。攻击者可利用该漏洞读取用户账户相关的个人信息。
https://gitee.com/mirrors/Gerrit

Gerrit信息泄露漏洞（CVE-2020-8919）
http://www.nsfocus.net/vulndb/51554