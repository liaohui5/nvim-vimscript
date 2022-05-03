## 说明

这是一个自己用的 neovim 配置的仓库

## 安装 neovim

```sh
brew install neovim
```

## 将这个项目 clone 到 `~/.config/nvim` 目录下

```sh
git clone https://gitee.com/liaohui5/neovim-config ~/.config/nvim
```

## 安装插件

```sh
# 随便打开一个文件
neovim test.txt

# 末行模式执行命令
:PlugInstall
```

## 安装 Coc 插件(代码提示)

https://github.com/neoclide/coc.nvim

```vimscript
let g:coc_global_extensions = [
  \'coc-json',
  \'coc-css',
  \'coc-cssmodules',
  \'coc-stylelint',
  \'coc-tsserver',
  \'coc-eslint',
  \'coc-tslint',
  \'coc-html',
  \'coc-git',
  \'coc-docker',
  \'coc-nginx',
  \'coc-prettier',
  \'coc-sh',
  \'coc-sql',
  \'coc-translator',
  \'coc-valor',
  \'coc-vetur'
  \'coc-yaml',
  \'coc-yank',
  \'coc-explorer',
  \'coc-emmet',
  \'coc-floatterm',
  \]
```
