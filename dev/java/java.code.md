# java code tips

## Java 注解（Annotation）
https://www.runoob.com/w3cnote/java-annotation.html

定义注解
https://www.liaoxuefeng.com/wiki/1252599548343744/1265102803921888


## Configuration
SpringBoot - @Configuration、@Bean注解的使用详解（配置类的实现）
https://www.hangge.com/blog/cache/detail_2506.html

spring框架中的@Import注解
https://segmentfault.com/a/1190000011068471
@Import 是被用来整合所有在@Configuration注解中定义的bean配置。
这其实很像我们将多个XML配置文件导入到单个文件的情形。
@Import注解实现了相同的功能。

### Illegal character in scheme name at index 0

错：

vault.uri="http://192.168.56.140:8200"

fixed:

vault.uri=http://192.168.56.140:8200

参考： https://stackoverflow.com/questions/15151613/java-lang-illegalargumentexception-illegal-character-in-scheme-at-index-0/15151968

### random


UUID random = UUID.randomUUID();
System.out.println( random );

https://stackoverflow.com/questions/7111651/how-to-generate-a-secure-random-alphanumeric-string-in-java-efficiently

### bean

[JavaBean](https://www.liaoxuefeng.com/wiki/1252599548343744/1260474416351680)


## exception

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

// private static final Charset CHARSET = StandardCharsets.UTF_8;
private static final String CHARSET = "UTF-8";

byte[] contentBytes = content.getBytes(CHARSET);

如果你用 getBytes(String) ,那么编译会要求你caught这个异常：

unreported exception UnsupportedEncodingException; must be caught or declared to be thrown

但如果用
private static final Charset CHARSET = StandardCharsets.UTF_8;

则要求你不能 caught 这个异常
java: 在相应的 try 语句主体中不能抛出异常错误java.io.UnsupportedEncodingException

因为两者定义虽然都有 `throw new NullPointerException()`,但是String表示`throws UnsupportedEncodingException`

```java
  public byte[] getBytes(String charsetName)
          throws UnsupportedEncodingException {
      if (charsetName == null) throw new NullPointerException();
      return StringCoding.encode(charsetName, coder(), value);
  }

  public byte[] getBytes(Charset charset) {
      if (charset == null) throw new NullPointerException();
      return StringCoding.encode(charset, coder(), value);
    }
```

[Java的异常](https://www.liaoxuefeng.com/wiki/1252599548343744/1264734349295520)

## 引用

[金三银四 Java面试题资料合集【25项专题】](https://mp.weixin.qq.com/s/VZ7wormwowlSPnA_XAnZaw)

[java异常面试题（2021最新版）](https://www.jianshu.com/p/2eb469e335d3)

