
# 写自己的Rust OS

https://os.phil-opp.com
https://github.com/phil-opp/blog_os

简体中文已经好久没有更新了
https://os.phil-opp.com/zh-CN/

可以用繁体
https://os.phil-opp.com/zh-TW/freestanding-rust-binary/

```bash
cargo new blog_os --bin --edition 2018
cargo build
rustup target add thumbv7em-none-eabihf
cargo build --target thumbv7em-none-eabihf

```

```bash
# Linux
cargo rustc -- -C link-arg=-nostartfiles
# Windows
cargo rustc -- -C link-args="/ENTRY:_start /SUBSYSTEM:console"
# macOS
cargo rustc -- -C link-args="-e __start -static -nostartfiles"
```

TODO: windows 里如何把`cargo build`提示 改成英文

https://os.phil-opp.com/zh-CN/freestanding-rust-binary/

rustup update nightly
$ rustup toolchain install nightly
rustup toolchain list

```json
{
  "llvm-target": "x86_64-unknown-none",
  "data-layout": "e-m:e-i64:64-f80:128-n8:16:32:64-S128",
  "arch": "x86_64",
  "target-endian": "little",
  "target-pointer-width": "64",
  "target-c-int-width": "32",
  "os": "none",
  "executables": true,
  "linker-flavor": "ld.lld",
  "linker": "rust-lld",
  "panic-strategy": "abort",
  "disable-redzone": true,
  "features": "-mmx,-sse,+soft-float"
}
```

cargo build --target x86_64-blog_os.json
cargo install cargo-xbuild

rustup component add rust-src
cargo xbuild --target x86_64-blog_os.json

rustup override set nightly
rustup component add rust-src

```toml
[build]
target = "x86_64-blog_os.json"
```

cargo xbuild

https://www.qemu.org/download/#windows

https://crates.io/crates/bootloader

Tool to create bootable disk images from a Rust OS kernel.
https://github.com/rust-osdev/bootimage

cargo install bootimage

[dependencies]
bootloader = "0.9.8"

rustup component add llvm-tools-preview

cargo bootimage
qemu-system-x86_64 -drive format=raw,file=bootimage-blog_os.bin

linking with `link.exe` failed: exit code: 1561 
https://stackoverflow.com/questions/50337099/cargo-build-fails-with-linking-error-link-exe-failed-exit-code-325595
linking with `link.exe` failed: exit code: 1561 
