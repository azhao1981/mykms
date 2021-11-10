# 静态网站

[开源项目对比](https://jamstack.org/generators/)



## hexo

[这个blog的主题](https://github.com/iissnan/hexo-theme-next)不错

例子： https://blog.lopygo.com/2020/2020-03-06-openvpn-over-ss/

不如上面的next
26、hexo-theme-matery：一款采用 Material Design 和响应式设计的 Hexo 博客主题。特点：
https://github.com/blinkfox/hexo-theme-matery

## hugo

### 下载：

https://github.com/gohugoio/hugo/releases

要下载 hugo_`extended`_0.89.2_Windows-64bit.zip 不然很多模板不能用

会报

Check your Hugo installation; you need the extended version to build SCSS/SASS

见：https://blog.csdn.net/qq_41136216/article/details/112674327

```bash
echo theme = \"ananke\" >> config.toml
hugo new posts/my-first-post.md
hugo server -D
hugo -D
```

### theme 主题

https://gohugo.io/hugo-modules/theme-components/


```bash
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke

git submodule add https://github.com/adityatelange/hugo-PaperMod themes/PaperMod
git submodule add https://github.com/spf13/hyde.git themes/hyde
hugo --theme hyde
```
有哪些好看的Hugo主题？Hugo框架主题选那个? Github的star数量告诉您
https://www.andbible.com/post/hugo-theme-review-loveit-papermond-others/

https://github.com/adityatelange/hugo-PaperMod
https://adityatelange.github.io/hugo-PaperMod/posts/papermod/papermod-installation/

https://hugoloveit.com/theme-documentation-basics/
https://github.com/dillonzq/LoveIt

https://github.com/alex-shpak/hugo-book
https://hugo-book-demo.netlify.app/docs/shortcodes/hints/


git clone https://github.com/dirkolbrich/hugo-theme-tailwindcss-starter themes/udprivacy

hugo server -D

Error: Error building site: POSTCSS: failed to transform "css/styles.css" (text/css). Check your PostCSS installation; install with "npm install postcss-cli". See https://gohugo.io/hugo-pipes/postcss/: this feature is not available in your current Hugo version, see https://goo.gl/YMrWcn for more information

注意 `npm install postcss-cli` 是在 **网站目录** 下运行,而不是在自定义 theme 下运行

hugo server --disableFastRender

### 自定义theme

[Hugo的theme使用与定制](https://note.qidong.name/2017/06/22/hugo-theme/)

+ 在加入到Git中后，直接修改主题中的相关文件，即可定制
+ 但:在静态引用他人代码，到自己的项目中去时，应该尽量不要对其进行修改。 因为，原作者可能会有俺们需要的更新。 
+ 最好的做法，是在外面做包装、覆盖之类的操作。

Hugo提供了覆盖的功能。

比如，把Hyde中的layouts/partials/sidebar.html，复制到Hugo项目下的相同位置。 然后，对这个文件的修改，就可以直接反馈在页面上了

### tailwindcss

table

https://tailwindcss.com/docs/table-layout

https://www.geeksforgeeks.org/tailwind-css-table-layout/

## 低代码

https://gitee.com/baidu/amis
https://baidu.gitee.io/amis/zh-CN/docs/start/getting-started

https://www.npmjs.com/package/amis-editor
npm i amis-editor

2021年15个国内优秀低代码开发平台对比分析 原创
https://blog.51cto.com/u_12169275/2951977

5款国产开源低代码开发平台推荐
https://segmentfault.com/a/1190000040838468

full_name,stargazers_count,forks,watchers,subscribers_count,license
baidu/amis,8502,1118,8502,155,Apache License 2.0
nocobase/nocobase,495,69,495,25,MIT License
steedos/steedos-platform,545,174,545,31,Other
jeecgboot/jeecg-boot,25755,10009,25755,774,Apache License 2.0

## github api 

https://docs.github.com/cn/rest/overview/libraries

API 原生： https://docs.github.com/cn/rest/reference/repos#get-a-repository

https://github.com/octokit/octokit.js

第三方：

ruby gem: https://github.com/piotrmurach/github

这个库提供放到 github 库里的那种图标

https://github.com/badges/shields

https://shields.io/category/social  star folk 
https://shields.io/category/license license

[用 Substats 和 Shields.io 为你的个人主页定制动态数据小牌子](https://sspai.com/post/59593)




# Markdown Pro

## idea

查看本地/远程 md

生成blog

应该是可以直接读,也可以生成 利于 SEO

## 可能就是我想要的blog

 https://github.com/vuejs/vuepress
 https://vuepress.vuejs.org/zh/
 好像不是,需要编译
 ```
 # 安装
yarn global add vuepress # 或者：npm install -g vuepress

# 新建一个 markdown 文件
echo '# Hello VuePress!' > README.md

# 开始写作
vuepress dev .

# 构建静态文件
vuepress build .
 ```



## 引用

[Use React Components within Markdown](https://github.com/jamesknelson/mdxc)

[markdown 数据可视化](https://github.com/geekplux/markvis)

### 本地

https://www.npmjs.com/package/markserv

```bash
npm install markserv -g
markserv
markserv -p 8642 -a 0.0.0.0
```

### 在线 markdown 渲染

<https://github.com/markdown-it/markdown-it> 有插件的

https://github.com/mdx-js/mdx

https://github.com/Dynalon/mdwiki/
这样用: http://www.example.com/mdwiki.html#!myfile.md
好像就是我想要的

起码能加上 章节 标签

<http://www.jianshu.com/p/34c92cbd0aaf>
<https://ruby-china.org/topics/17028>

<https://cn.vuejs.org/v2/examples/>
<https://github.com/chjj/marked>
<https://github.com/evilstreak/markdown-js>
<https://github.com/showdownjs/showdown> 原生

[快速搭建你的 github pages 个人博客 —— 基于 Create-React-App 的单页面应用实践](https://segmentfault.com/a/1190000013026806)

[把React.js的專案發佈到Github Page的方法](http://dingding.logdown.com/posts/1110773-method-of-reactjs-publishes-the-project-to-github-page)

[Gitment：使用 GitHub Issues 搭建评论系统](https://imsun.net/posts/gitment-introduction/)

[3.5. 建立主页](https://www.worldhello.net/gotgithub/03-project-hosting/050-homepage.html)

[如何用Github的gh-pages分支展示自己的项目](https://www.cnblogs.com/MuYunyun/p/6082359.html)

https://zh.nuxtjs.org/faq/github-pages/

[使用npm-scripts发布Github Pages](https://segmentfault.com/a/1190000013090598)

[npm的gh-pages结合github发布repository网站](https://segmentfault.com/a/1190000010672318)