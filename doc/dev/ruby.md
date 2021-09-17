# ruby

## owesame

[Ruby SVG Image Builder](https://github.com/DannyBen/victor)
> 可以做一个在线编辑的工具
> https://c.runoob.com/more/svgeditor/
> https://svgjs.com/docs/3.0/

https://github.com/obie/guide-to-reactive-rails

https://skryukov.github.io/rails/activeadmin/2020/09/29/an-unofficial-active-admin-guide

https://www.honeybadger.io/blog/ruby-rails-view-caching/

https://longliveruby.com/articles/rails-alternatives-ruby-web-frameworks

## code

### string
```
str=<<END_OF_STRING
  a string
  END_OF_STRING
```

### OrderedOptions

https://api.rubyonrails.org/classes/ActiveSupport/OrderedOptions.html
```ruby
h = ActiveSupport::OrderedOptions.new
h.boy = 'John'
h.girl = 'Mary'
h.boy  # => 'John'
h.girl # => 'Mary'
h.dog  # => nil

class MyClass
  include ActiveSupport::Configurable
  # 默认值 
  config_accessor :level, instance_reader: false do
    "info"
  end
end

MyClass.config.abc = true
puts MyClass.config.abc
puts MyClass.new.config.abc

# level
puts MyClass.config.level
puts MyClass.new.config.level
MyClass.config.level = "warn"
puts MyClass.config.level
puts MyClass.new.config.level
```

### 字节转换

c语言可以直接查看内存数据，ruby不允许，但提供 打包`pack`和解包 `unpack`方法查看

https://bigbinary.com/blog/ruby-pack-unpack
https://apidock.com/ruby/Array/pack

C             | Integer | 8-bit unsigned (unsigned char)
S             | Integer | 16-bit unsigned, native endian (uint16_t)
B            | String  | bit string (MSB first)
b            | String  | bit string (LSB first)
H            | String  | hex string (high nibble first)
h            | String  | hex string (low nibble first)
u            | String  | UU-encoded string
M            | String  | quoted printable, MIME encoding (see RFC2045)
m            | String  | base64 encoded string (see RFC 2045, count is width)
             |         | (if count is 0, no line feed are added, see RFC 4648)

{% highlight text %}
B | bit string (MSB first)
b | bit string (LSB first)

注意：MSB和人类的读法更近，但应用更广泛的是LSB

```ruby
[19] pry(main)> 'c'.unpack('B*')
=> ["01100011"]
[20] pry(main)> 'c'.unpack('b*')
=> ["11000110"]
"hello".unpack('B*')
=> ["0110100001100101011011000110110001101111"]
# to_s(2) 也可以把一个数转成2进制
> "hello".unpack('C*').map {|e| e.to_s 2}
=> ["1101000", "1100101", "1101100", "1101100", "1101111"]

所以 "hello".unpack('H*') 其实就是：
"hello".unpack('C*').map {|e| e.to_s 16}
=> ["68", "65", "6c", "6c", "6f"]

"asd".bytes  # 等于
"asd".unpack("C*")
"asd".unpack("c*")

# unpack里的''其实是可以变的*表示后面都用一样的，但也可以用
> "aa".unpack('b8B8')
=> ["10000110", "01100001"]

# 由于 m 不是针对‘位’的，所以不需要 m*,也没有
# 标准库： https://ruby-doc.org/stdlib-2.5.3/libdoc/base64/rdoc/Base64.html
def encode64(bin)
  [bin].pack("m")
end
def decode64(str)
  str.unpack1("m")
end
# m vs m0 是不同的标准 在遇到非B64字符时忽略或出错，m0会报ERROR，m0会把\n也当成异常字符，在使用前应该清除
txt = "Hello World"
dTxt = [txt].pack('m')  # "SGVsbG8gV29ybGQ=\n"
[txt].pack('m').unpack1('m0')  # ArgumentError: invalid base64
[txt].pack('m').split.first.unpack1('m0')[0]  # "Hello World"
```

[ruby - 为什么 hex -> base64 与 base64 -> hex 使用打包和解包如此不同？](https://www.coder.work/article/1080725)


```ruby
class String
  def to_base64
    [[self].pack("H*")].pack("m0")
  end

  def to_hex
    self.unpack("m0").first.unpack("H*").first
  end
end
```

C/C++ 检查内存中数字类型的最高有效位(MSB)
https://www.jianshu.com/p/5d554f138253
浅谈字节序（Byte Order）及其相关操作
http://blog.zhaojie.me/2010/02/byte-order-and-related-library.html


## JIT

ruby --jit -e "puts RubyVM::MJIT.enabled?"

ruby --jit -S irb

ruby --jit -S pry

翻译 [译] Ruby 的新特性 JIT
https://ruby-china.org/topics/38084

## gems

### pg
```bash
sudo update -y
sudo apt-get install postgresql-client libpq5 libpq-dev -y
gem install pg -v '1.2.3'
```

### VS Code Run test

https://marketplace.visualstudio.com/items?itemName=hbenl.vscode-test-explorer

https://marketplace.visualstudio.com/items?itemName=connorshea.vscode-ruby-test-adapter

