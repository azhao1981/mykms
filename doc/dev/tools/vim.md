# vim


## 插件

https://github.com/junegunn/vim-plug

[vim 成“神“之路 （一）](https://blog.csdn.net/Z_Stand/article/details/108369315)

Vim/NeoVim + Silverlight + CTags — Make up an awesome Editor
https://medium.com/weekly-webtips/vim-neovim-silverlight-ctags-make-up-an-awesome-editor-49f3980b575d

神级编辑器 Vim 使用-插件篇
https://zhuanlan.zhihu.com/p/345554183
三十分钟配置一个顺滑如水的 Vim
https://zhuanlan.zhihu.com/p/102033129

### fzf

里面有很多用法，值得看

[模糊搜索神器fzf](https://segmentfault.com/a/1190000011328080)

https://github.com/junegunn/fzf

```bash
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

# 安装
:PlugInstall
# 清除
:PlugClean 

vim $(fzf)
```

[Fuzzy finder(fzf+vim) 使用全指南](https://keelii.com/2018/08/12/fuzzy-finder-full-guide/)

https://github.com/sharkdp/fd

https://github.com/chinanf-boy/fd-zh

```bash
cargo install fd-find

git clone https://github.com/sharkdp/fd
cargo build
cargo install
cp ./target/release/fd /usr/bin/

export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f"
# 使用 highlight
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
# 使用 bat (官方推荐)
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
```

For syntax-highlighted preview, install bat
用 highlight 也可以 http://www.andre-simon.de/doku/highlight/en/highlight.php

```bash
sudo apt install highlight
```

If delta is available, GF?, Commits and BCommits will use it to format git diff output.
Ag requires The Silver Searcher (ag)
Rg requires ripgrep (rg)
Tags and Helptags require Perl

ERROR: :Files 看到 Not an editor command: Files fix: 手动克隆
```bash
cd ~/.vim/plugged
git clone https://github.com/junegunn/fzf.vim.git 
git clone https://github.com/junegunn/fzf.git 
```

### ctags

Vim实用技巧进阶(第16章:ctags索引和导航) - Practical.Vim.2nd.Edition Tip 102~104
https://xu3352.github.io/linux/2018/12/16/practical-vim-skills-chapter-16

sudo apt-get install exuberant-ctags
ctags -R .

Vim高级用法之ctags工具
https://blog.mythsman.com/post/5d2b42f525601931a5f8d736/
VIM中ctags的简单使用教程
https://blog.csdn.net/haifeng_gu/article/details/72934188
taglist