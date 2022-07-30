" =============================================
" 基础选项
" =============================================
set number                        " 显示行号
set expandtab                     " 将tab变成空格
set cursorline                    " 高亮当前行
set clipboard=unnamed             " 使用系统粘贴板
set tabstop=2                     " 一个 tab 两个空格宽度
set shiftwidth=2                  " 一个 tab 两个空格宽度
set softtabstop=2                 " 一个 tab 两个空格宽度
set expandtab                     " 将tab变成空格
set smarttab                      " 只能
set autoindent                    " 自动缩进
set encoding=utf-8                " 文件编码: utf-8
set hidden                        " TextEdit might fail if hidden is not set.
set nobackup                      " 不设置备份
set nowritebackup                 " 不保存备份
set cmdheight=1                   " 命令行高度
set updatetime=500                " 更新间隔时间(ms), 比如按下<Leader>键后没有再按其他键, 多久后自动取消<Leader>
set nowrap                        " 不要自动换行显示
set autowriteall                  " 自动保存文件
set autoread                      " 文件内容更新, 自动读取
set showmatch                     " 显示错误信息
set foldenable                    " 允许折叠
set foldmethod=indent             " 折叠方式
set foldlevelstart=99             " 打开文件时, 不要直接折叠
set signcolumn=yes                " 行号左边符号栏目
set fo-=r                         " 取消自动注释
syntax enable                     " 允许语法检测
filetype on                       " 开启文件类型检测
filetype plugin on                " 让插件识别文件类型
filetype indent on                " 让插件识别缩进
let g:loaded_perl_provider = 0    " 不支持 perl provider
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
autocmd FileType javascript,typescript setlocal comments-=:// comments+=f://

" 加载快捷键
runtime ./mappings.vim

" 加载插件
runtime ./plugins.vim

" ================================================================================
" 关于这个项目: 
" 1. 所有的选项在 /init.vim 中
" 2. 所有快捷键在 /mappings.vim 中
" 3. 所有插件在 /plugins.vim 中, 插件的配置在 /config/*.vim 中
" ================================================================================