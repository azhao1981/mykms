# crystal

可以用来写工具

## 安装

[crystal-lang](https://crystal-lang.org/) v1.0.0

http://www.crystal-lang.top/
http://doc.crystal-lang.top/syntax/
https://www.yuque.com/opensource-books/crystal-book/readme

[执行一次编译和运行](http://www.crystal-lang.top/2018/01/01/compiler/)

```bash
sudo apt install libssl-dev      # for using OpenSSL
sudo apt install libxml2-dev     # for using XML
sudo apt install libyaml-dev     # for using YAML
sudo apt install libgmp-dev      # for using Big numbers
sudo apt install libz-dev        # for using crystal play
brew install llvm
brew install crystal-lang --with-llvm
```
居然装不了

TIP： linux最佳安装还是编译好的可执行文件或是deb

```bash
https://github.com/crystal-lang/crystal/releases
ln -s [full path to bin/crystal] /usr/local/bin/crystal

docker pull crystallang/crystal:1.0.0
$ echo 'puts "Hello World!"' > hello-world.cr
$ docker run --rm -it -v $PWD:/workspace -w /workspace crystallang/crystal:0.32.1-alpine \
    crystal build hello-world.cr --static
$ ./hello-world
Hello World!
$ ldd hello-world
        statically linked
```

## init build

```
crystal init app $app_name
crystal build src/$app_name.cr --static
```

## 命令行工具

https://github.com/jwaldrip/admiral.cr
https://crystal-lang.org/api/1.0.0/OptionParser.html

