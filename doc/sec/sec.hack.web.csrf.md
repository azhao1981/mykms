# web 攻击：csrf

一个账户接管几乎所有阿里巴巴网站(CSRF漏洞+WAF绕过)
https://www.cnblogs.com/17bdw/p/10709393.html
omniauth 终于解决 CVE-2015-9284
https://github.com/omniauth/omniauth/releases/tag/v2.0.0
https://github.com/cookpad/omniauth-rails_csrf_protection
Java安全编码之CSRF
https://www.anquanke.com/post/id/222284
https://portswigger.net/web-security/csrf
https://portswigger.net/web-security/ssrf
https://portswigger.net/support/using-burp-to-test-for-cross-site-request-forgery
django的csrf保护
In general, this can occur when there is a genuine Cross Site Request Forgery, or when Django's CSRF mechanism has not been used correctly. For POST forms, you need to ensure:
https://docs.djangoproject.com/en/2.1/ref/csrf/

Google: zap csrf
https://resources.infosecinstitute.com/topic/csrf-proof-of-concept-with-owasp-zap/
https://www.zaproxy.org/docs/desktop/start/features/anticsrf/
https://groups.google.com/g/zaproxy-users/c/1OyLNAYVBic

容易出问题的地方：
Authenticate 时没有做csrf保护
Cross-Site Request Forgery (CSRF) in trestle-auth
https://github.com/advisories/GHSA-h8hx-2c5r-32cf