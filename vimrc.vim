" ================================================================================
" base settings
" ================================================================================
set number            " 显示行号
syntax enable         " 允许语法检测
set expandtab         " 将tab变成空格
set cursorline        " 高亮当前行
set clipboard=unnamed " 使用系统粘贴板
set tabstop=2         " 一个 tab 两个空格宽度
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab          " 自动缩进
set autoindent
set cindent
set encoding=utf-8    " 文件编码: utf-8
set hidden            " TextEdit might fail if hidden is not set.
set nobackup          " 不设置备份
set nowritebackup
set cmdheight=1       " 命令行高度
set updatetime=100    " 更新间隔时间(ms)
filetype plugin on    " 让插件识别文件类型
filetype indent on    " 让插件识别缩进
filetype on
set nowrap
set autowriteall      " 自动保存文件
set autoread          " 文件内容更新, 自动读取
set showmatch
set foldenable        " 允许折叠
set foldmethod=manual " 折叠方式
set signcolumn=yes    " 行号左边符号栏目
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
set fo-=r             " 取消自动注释
autocmd FileType javascript,typescript setlocal comments-=:// comments+=f://
let g:loaded_perl_provider = 0 " 不支持 perl provider

