## 说明

这是一个自己用的 neovim 配置的仓库, 这个仓库不会再维护了, [我改用 lua 配置文件了](https://github.com/liaohui5/nvim)

但是作为学习 vim 还是非常不错的资料, 我的配置文件中有中文的注释

![preview](https://raw.githubusercontent.com/liaohui5/images/main/images/202205032331754.png)

## 安装 neovim

```sh
brew install neovim
```

## 将这个项目 clone 到 `~/.config/nvim` 目录下

```sh
git clone https://gitee.com/liaohui5/nvim-vimscript ~/.config/nvim
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
  \'coc-translator',
  \'coc-snippets',
  \'coc-scssmodules',
  \'coc-prettier',
  \'coc-pairs',
  \'coc-yank',
  \'coc-marketplace',
  \'coc-html-css-support',
  \'coc-html',
  \'coc-highlight',
  \'coc-git',
  \'coc-explorer',
  \'coc-eslint',
  \'coc-emmet',
  \'coc-diagnostic',
  \'coc-yaml',
  \'coc-tsserver',
  \'coc-tslint',
  \'coc-sql',
  \'coc-sh',
  \'coc-json',
  \'coc-docker',
  \'coc-css',
  \'@yaegassy/coc-volar-tools',
  \'@yaegassy/coc-volar',
  \'@yaegassy/coc-nginx',
  \]
```

## 安装其他 vscode 语法提示插件

> 必须先安装 coc-snippets, 这些 vscode 提示插件才能生效

```sh
:CocInstall https://github.com/andys8/vscode-jest-snippets

# or

Plug 'andys8/vscode-jest-snippets'
```

## 如果图标显示错误

1. 请安装指定字体 https://github.com/ryanoasis/nerd-fonts
2. 将终端的字体设置为这个字体我的是 hack-nerd

## 自定义你的配置

1. 选项 init.vim, 基本快捷键 mappings.vim
2. 插件列表 plugins.vim
3. 插件配置 config/\*.vim
