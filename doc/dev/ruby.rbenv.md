# RUBY

## rbenv

### 安装

一键安装,包括分步安装 和环境设置,并且安装2.4.1

```bash
  curl -sSL https://git.io/Jn6DI | bash
```

#### 分步手动安装

```bash
sudo apt install -y libreadline-dev libssl-dev zlib1g-dev libjemalloc-dev git
sudo apt install -y libmysqlclient-dev
sudo apt install -y build-essential gcc g++ make cmake 

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/jf/rbenv-gemset.git $HOME/.rbenv/plugins/rbenv-gemset
git clone https://github.com/andorchen/rbenv-china-mirror.git $HOME/.rbenv/plugins/rbenv-china-mirror
git clone https://github.com/rkh/rbenv-update.git $HOME/.rbenv/plugins/rbenv-update

# 使用gitee的镜像
git clone --depth=1 https://gitee.com/azhao-1981/rbenv.git ~/.rbenv
git clone --depth=1 https://gitee.com/azhao-1981/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone --depth=1 https://gitee.com/azhao-1981/rbenv-gemset.git ~/.rbenv/plugins/rbenv-gemset
git clone --depth=1 https://gitee.com/azhao-1981/rbenv-china-mirror.git ~/.rbenv/plugins/rbenv-taobao-mirror
git clone --depth=1 https://gitee.com/azhao-1981/rbenv-update.git ~/.rbenv/plugins/rbenv-update
```

#### 环境设置

```bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
sources ~/.bashrc
```

### 查看可安装的 RUBY 版本和安装

```shell
ll ~/.rbenv/plugins/ruby-build/share/ruby-build/
rbenv install 2.6.6  # 推荐

# 2.5.1 的jemalloc版本
RUBY_CONFIGURE_OPTS=--with-jemalloc rbenv install 2.6
RUBY_CONFIGURE_OPTS=--with-jemalloc rbenv install 3.0

# 是否有使用 jemalloc
ruby -r rbconfig -e "puts RbConfig::CONFIG['LIBS']"
# -lpthread -ljemalloc -lgmp -ldl -lcrypt -lm  # Output

# 2.6.* 的检查:
ruby -r rbconfig -e "puts RbConfig::CONFIG['MAINLIBS']"
```

### 设置

```shell
rbenv global 2.6.6
rbenv shell $(rbenv global) # shell 是临时切换
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
gem install bundler # 必装
```

### jruby

rbenv
https://s3.amazonaws.com/jruby.org/downloads/9.2.12.0/jruby-bin-9.2.12.0.tar.gz

官网下载：
https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.2.12.0/jruby-dist-9.2.12.0-bin.tar.gz

```bash
mkdir ~/.rbenv/cache
mv jruby-dist-9.2.12.0-bin.tar.gz jruby-9.2.12.0.tar.gz
rbenv install 9.2.12.0
```

安装时好像要求java8,但切换成java11也是可以运行的
低层的java 版本切换,jruby自然就切换好了

jar包

```bash
gem install warbler
mkdir bin
vim bin/hello_world.rb
puts "hello jruby jar"
warble jar
java -jar hello.jar
```

java jruby 相互调用
https://cloud.tencent.com/developer/article/1066951

### bundle

```bash
bundle install --binstubs
bundle binstubs rake
rake rails:update:bin
```

### 常见问题和错误处理

#### mysql/puma/nokogiri

```bash
gem install mysql2 -v '0.4.6' -- --srcdir=/usr/local/mysql/include

bundle config build.puma --with-cppflags=-I$(brew --prefix openssl)/include
bundle install
gem install puma -v 2.8.2 -- --with-opt-dir=/usr/local/opt/openssl

gem install nokogiri -v '1.6.3.1'
```

#### mac libxml2 libxslt mysql/puma/nokogiri

```bash
ERROR: cannot discover where libxml2 is located on your system. please make sure `pkg-config` is installed.

brew install libxml2
brew install libxslt
brew install homebrew/dupes/libiconv

gem install nokogiri -v '1.6.6.2' -- --with-opt-dir=/usr/local/Cellar/libiconv/1.15/

brew --prefix openssl
gem install mysql2 -v '0.5.2' -- --with-opt-dir=/usr/local/opt/openssl

# 这个好像不行
cd {RailsApp_Root}/vendor/bundle/ruby/1.9.1/gems/mysql2-0.3.11/ext/mysql2
ruby extconf.rb
make
make install
```

#### libiconv

/usr/local/include

/usr/local/lib

/usr/local/Cellar/libiconv/1.15/

#### readline

<https://stackoverflow.com/questions/54261455/library-not-loaded-usr-local-opt-readline-lib-libreadline-7-dylib-crashing-my>

Library not loaded: /usr/local/opt/readline/lib/libreadline.7.dylib crashing my rails console

https://www.cnblogs.com/clover-toeic/p/3892688.html

```ruby
# 解决:
rbenv install 2.1.1

/usr/local/opt/readline/lib/libreadline.7.dylib
cd /usr/local/opt/readline/lib
ln -s libreadline.8.0.dylib libreadline.7.dylib

xbrew upgrade tig
gem pristine --all
gem pristine mysql2
gem install mysql2 -v '0.4.8' -- --with-opt-dir=/usr/local/opt/openssl
```

#### mysql安全设置

- **注意: 这个开发环境不要去做,开发不需要安全设置**

```bash
/usr/local/opt/mysql/bin/mysql_secure_installation

brew services stop mysql
mysql -uroot
```

#### gem 更新为国内镜像,国外服务器勿加

```shell
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
gem sources -l
# 请确保只有 gems.ruby-china.com
# 安装最新的
gem install rails
```

#### 更好的做法: 加镜像代理

```bash
bundle config 'mirror.https://rubygems.org' 'https://gems.ruby-china.com'
```

#### Ruby China 镜像域名变化

https://ruby-china.org/topics/37030

https://gems.ruby-china.com

https://cache.ruby-china.com

#### ruby-china源问题

- **注:最新版本没有问题了**

新的 ruby-china https 有问题,用原来的

```bash
cd ~/.rbenv/plugins/rbenv-taobao-mirror
git co -b taobao d9d5e07
```

### wsl

Make sure that `gem install rugged -v '0.99.0' --source 'https://gems.ruby-china.com/'` succeeds before bundling.
checking for gmake... no
checking for pkg-config... no

https://linuxize.com/post/how-to-install-gcc-compiler-on-debian-10/

以下有用，但都不对
sudo apt install build-essential
sudo apt-get install manpages-dev man-db manpages-posix-dev

gmake 并不需要，因为 checking no 还是往下走了

sudo apt-get install pkg-config

### rvm public key

https://github.com/rvm/rvm/issues/4573

```bash
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
```

## fullstaqruby 还是 beta,关注,说是能省30-50%内存

**未经生产验证不建议使用**

[page](https://fullstaqruby.org/)

 Fullstaq Ruby is an MRI-based Ruby distribution that's optimized for server production use cases. It is compiled with the Jemalloc and malloc_trim patches, allowing lower memory usage and higher performance.

[What causes Ruby memory bloat?](https://www.joyfulbikeshedding.com/blog/2019-03-14-what-causes-ruby-memory-bloat.html)

<https://javascript.ctolib.com/fullstaq-labs-fullstaq-ruby-server-edition.html>

<https://github.com/fullstaq-labs/fullstaq-ruby-server-edition>

<https://github.com/fullstaq-labs/fullstaq-ruby-server-edition/blob/master/README.md#installation>

<https://github.com/fullstaq-labs/fullstaq-ruby-server-edition#what-is-malloc_trim-and-how-does-it-benefit-me>
