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


