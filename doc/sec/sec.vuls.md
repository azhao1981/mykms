# 常见漏洞

## 资源
常见漏洞扫描器测试平台
http://demo.aisec.cn/
在线平台,看起来没有收费
http://www.aisec.cn/aiscanner

## rails

[CVE-2021-22904](https://groups.google.com/g/rubyonrails-security/c/Pf1TjkOBdyQ)
> https://sourcegraph.com/github.com/rails/rails/-/compare/v5.2.4.5...v5.2.4.6
> https://github.com/rails/rails/compare/v5.2.4.5...v5.2.6

[[CVE-2021-22885] Possible Information Disclosure / Unintended Method Execution in Action Pack](https://groups.google.com/g/rubyonrails-security/c/NiQl-48cXYI)
https://discuss.rubyonrails.org/t/cve-2021-22885-possible-information-disclosure-unintended-method-execution-in-action-pack/77868

  def redirect_to_polymorphic_string_args
    redirect_to ["internal", Workshop.new(5)]
  end
修改希望这样的表达会报错。即当使用array时，希望所有的输入都是代码输入，而不是从params 输入中取得，那入params中取得又怎么利用呢？

[CVE-2021-22903](https://discuss.rubyonrails.org/t/cve-2021-22903-possible-open-redirect-vulnerability-in-action-pack/77867)
> 

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


CVE-2021-28965: XML round-trip vulnerability in REXML
https://www.ruby-lang.org/en/news/2021/04/05/xml-round-trip-vulnerability-in-rexml-cve-2021-28965/
https://sourcegraph.com/github.com/ruby/ruby/-/compare/v2_6_6...v2_6_7
https://sourcegraph.com/github.com/ruby/ruby/-/commit/1b59a4dc76caa061355f4289d2c54d4625671735?visible=11
```ruby
    def parse(xml)
      REXML::Document.new(xml)
    end
    doc = parse(<<-XML)
x<?x y
<!--?><?x -->?>
<r/>
        XML
        pi = doc.children[1]
        assert_equal([
                       "x",
                       "y\n<!--",
                     ],
                     [
                       pi.target,
                       pi.content,
                     ])
```