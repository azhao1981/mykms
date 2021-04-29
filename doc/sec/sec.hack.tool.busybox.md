# busybox


## 安装

```bash
wget 'https://busybox.net/downloads/binaries/1.30.0-i686/busybox'
```

<https://busybox.net/FAQ.html>

## [和busybox一样有意思的小工具](https://busybox.net/tinyutils.html)

### [SSH	Dropbear](https://matt.ucc.asn.au/dropbear/dropbear.html)

**Dropbear** has both an ssh server and an ssh client that together come in around 100k. 
It has no external dependencies (I.E. it does not depend on OpenSSL, using a built-in copy of LibTomCrypt instead). 
It's actively maintained, with a quiet but responsive mailing list.

https://github.com/mkj/dropbear

```bash
grep static * | grep -v '\.c'
CHANGES:- "configure --enable-static" should now be used instead of "make STATIC=1"
INSTALL:If you want to compile statically use ./configure --enable-static
INSTALL:You can use "make STATIC=1" to make statically linked binaries, and it is
mkdir ../bin
cp dropbear ../bin/
cp dbclient ../bin/
cp dropbearkey ../bin/
cp dropbearconvert ../bin/
# scp 编译不成功，需要重新编译
make clean
make PROGRAMS="scp"
cp scp ../bin/
```

## 类似工具

### toybox 小，少，只是许可不同

https://www.oreilly.com/library/view/mastering-embedded-linux/9781787283282/8c0f324c-1759-4362-8741-e2e5c9db9bff.xhtml

### https://github.com/samuela/rustybox

A free-range, non-GMO fork of busybox in 100% Rust

cargo build --all-features
[Statically Linked Rust App](https://zhuanlan.zhihu.com/p/38948830)

http://zderadicka.eu/static-build-of-rust-executables/

ERROR: 一大推错误

### https://github.com/mesalock-linux/mesabox

MesaBox is a collection of core system utilities written in Rust for Unix-like systems.

### https://github.com/uutils/coreutils

uutils is an attempt at writing universal (as in cross-platform) CLI utilities in Rust. This repository is intended to aggregate GNU coreutils rewrites.

### https://github.com/bmatzelle/gow

Unix command line utilities installer for Windows.

## 其它

[Busybox](https://yeasy.gitbook.io/docker_practice/os/busybox)

