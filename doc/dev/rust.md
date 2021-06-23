# rust

## 中国镜像

[Rust crates 国内镜像源加速配置](https://zhuanlan.zhihu.com/p/126204128)

.cargo/config 

```bash
[source.crates-io]
registry = "https://github.com/rust-lang/crates.io-index"

replace-with = 'tuna'
[source.tuna]
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"

#replace-with = 'ustc'
#[source.ustc]
#registry = "git://mirrors.ustc.edu.cn/crates.io-index"

[net]
git-fetch-with-cli = true
```

Rust从入门到高级（三）：Rust国内镜像中科大源清华源上交源rustcc源
https://blog.csdn.net/xiangxianghehe/article/details/105874880

## 静态编译 

https://rustup.rs/
https://www.rust-lang.org/zh-CN/tools/install

安装  rustup

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
```

[使用 musl 库静态编译 rust 程序](https://blog.biofan.org/2019/08/rust-static-build-with-musl/)

下面以链接到 openssl 和 libsodium 这两个库为例, 来演示一下.

[rust 静态编译可执行文件指南](https://blog.csdn.net/castellan/article/details/86063775)

```bash
rustup target add x86_64-unknown-linux-musl
rustup target add x86_64-unknown-linux-musl --toolchain=nightly
cargo build --release --target=x86_64-unknown-linux-musl
ldd target/x86_64-unknown-linux-musl/release/hello
```

[Rust 在linux环境下 编译 .so 提供给 android 使用](https://blog.csdn.net/xie397361457/article/details/109997037)

Q： error occurred: Failed to find tool. Is `x86_64-linux-musl-gcc-gcc` installed?
A: `apt install musl-tools -y`
[使用 musl 库静态编译 rust 程序](https://blog.biofan.org/2019/08/rust-static-build-with-musl/)


