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

" ================================================================================
" key maps
" ================================================================================
":mapclear - 取消所有自定义快捷键映射
":nmap - 查看 normal 模式所有快捷键
":imap - 查看 insert 模式所有快捷键
":vmap - 查看 visual 模式所有快捷键
":xmap - 查看 visual 模式所有快捷键
":cmap - 查看 command-line 模式所有快捷键
":smap - 查看 select 模式所有快捷键
":omap - 查看 operator 模式所有快捷键

" 映射 <leader> 键: 空格, 默认反斜线
let g:mapleader="\<SPACE>"

" leader + 0: 重新载入配置文件
nnoremap <leader>0 :source ~/.config/nvim/init.vim <CR> 

" - : 取消高亮
nnoremap - :nohl<CR>

" <leader>w: 保存文件
nnoremap <leader>w :w<CR>

" <leader>s: 保存文件
nnoremap <leader>s :w<CR>

" <leader>x: 保存文件然后退出
nnoremap <leader>x :x<CR>

" <leader>q: 退出编辑器
nnoremap <leader>q :qa<CR>

" x/s: 删除, 而不是剪切
nnoremap x "_x
vnoremap x "_x
vnoremap s "_s
nnoremap s "_s

" <leader>p: 多次粘贴,而不是粘贴后复制
nnoremap <leader>p "0p
vnoremap <leader>p "0p

" shift + ←: 上一个 buffer
" shift + →: 下一个 buffer
nnoremap <s-left> :bprevious<CR>
nnoremap <s-right> :bnext<CR>

" <leader>c: 关闭当前 buffer
function CloseBufferOnly()
  :bp|bd #
endfunction
nnoremap <leader>c :call CloseBufferOnly()<CR>

" tab: 向右缩进
" shift+tab: 向左缩进
vnoremap <tab> >
vnoremap <s-tab> <

" 移动到最后, 但是不包括换行符
nnoremap $ $h
vnoremap $ $h

" 这连个命令, 类 unix 系统有效
" <leader>n: 创建文件
" <leader>df: 删除文件
nnoremap <leader>n :!touch 
nnoremap <leader>df :!rm -rf 

" <CTRL-f>: 搜索(选中后)
" <leader>r: 替换
vnoremap <C-f> gd<ESC>
nnoremap <leader>r :%s/

" window resize
nnoremap <right> :vertical-resize-1<CR>
nnoremap <left> :vertical-resize+1<CR>
nnoremap <up> :resize+1<CR>
nnoremap <down> :resize-1<CR>

" select current word
nnoremap <C-e> bve

" ================================================================================
" plugins
" ================================================================================
call plug#begin('~/.config/nvim/plugins')
Plug 'crusoexia/vim-monokai'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'editorconfig/editorconfig-vim'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" >>>>> themecolors <<<<<
"  Plug 'sonph/onehalf', { 'rtp': 'vim' }
"  Plug 'drewtempelmeyer/palenight.vim'
" tomasr/molokai
" crusoexia/vim-monokai


" >>>>> coc.nvim <<<<<
" install coc extensions: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#why-are-coc-extensions-needed
let g:coc_global_extensions = [
  \'coc-json',
  \'coc-css',
  \'coc-diagnostic',
  \'coc-tsserver',
  \'coc-eslint',
  \'coc-tslint',
  \'coc-html',
  \'coc-git',
  \'coc-docker',
  \'coc-prettier',
  \'coc-sh',
  \'coc-sql',
  \'coc-translator',
  \'coc-html-css-support',
  \'coc-yaml',
  \'coc-explorer',
  \'coc-emmet',
  \'coc-marketplace',
  \'@yaegassy/coc-volar',
  \'@yaegassy/coc-volar-tools',
  \'@yaegassy/coc-nginx',
  \]

" volar 插件: <leader>vs: 将当前 vue 文件分割为3个窗口
autocmd FileType vue let b:coc_root_patterns = ['.git', '.env', 'package.json', 'tsconfig.json', 'jsconfig.json', 'vite.config.ts', 'nuxt.config.ts']
nnoremap <leader>vs :CocCommand volar.action.splitEditors<CR>

" 使用 Tab 触发选择下一个代码 Shift-Tab/Ctrl-p 上一个
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" CTRL+l: 插入模式下,显示代码提示
inoremap <silent><expr> <C-l> coc#refresh()

" 跳到函数定义位置(文件)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 使用 enter 确认选中代码提示
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" <lader>[ / leader]: 跳到上一个错误,下一个错误
nmap <silent><leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent><leader>] <Plug>(coc-diagnostic-next)

" <leader>h: 查看文档
nnoremap <silent><leader>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" <leader>m: 给选中代码提供快捷改善操作
xmap <leader>m <Plug>(coc-codeaction-selected)
nmap <leader>m <Plug>(coc-codeaction-selected)

" <leader>ac: 显示代码改进建议菜单
nmap <leader>ac <Plug>(coc-codeaction)

" 状态栏设置
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" >>>>> coc-translator <<<<<
" <leader>fy: 翻译
vmap <leader>fy <Plug>(coc-translator-pv)

" >>>>> coc-prettier <<<<<
" <leader>f: 格式化当前文件
nmap <leader>f :CocCommand prettier.formatFile<CR>
vmap <leader>f :CocCommand prettier.formatFile<CR>

" >>>>> coc-explorer <<<<<
" Ctrl+t: 显示侧边栏文件目录树
nnoremap <C-t> :CocCommand explorer<CR>

" >>>>> vim-airline && vim-airline-themes <<<<<
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='simple'

" >>>>> colorscheme <<<<<
colorscheme monokai
set t_Co=256
set termguicolors
let g:monokai_gui_italic = 1
let g:monokai_term_italic = 1

" >>>>> vim-easymotion <<<<<
" 禁止使用默认的快捷键
let g:EasyMotion_do_mapping = 0

" `s{char}{label}`: 按下s搜索字符
nmap s <Plug>(easymotion-overwin-f)
" `s{char}{char}{label}`
"nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" <leader>j / <leader>k: 快速向下/上跳行
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)

" >>>>> vim-sneak <<<<<
" f: 在行内向后搜索, F:在行内向前搜索
let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

" >>>>> kien/ctrlp.vim <<<<<
" Ctrl+p: 搜索文件
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](node_modules|dist|build|logs|tmp)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(exe|so|dll|dat|DS_Store)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" >>>>> preservim/nerdcommenter <<<<<
" 注释插件快捷键
" 创建插件默认的快捷键映射: https://github.com/preservim/nerdcommenter#default-mappings
let g:NERDCreateDefaultMappings = 0

" 在注释符号后面加一个空格
let g:NERDSpaceDelims = 1

" 多行注释使用
let g:NERDCompactSexyComs = 1

" 注释左对齐而不是随代码缩进
let g:NERDDefaultAlign = 'left'

" 设置一个默认语言的注释作为其他文件注释
let g:NERDAltDelims_java = 1

" 添加你自己的格式覆盖默认的格式
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" 允许注释空行
let g:NERDCommentEmptyLines = 1

" 删除注释结尾空格
let g:NERDTrimTrailingWhitespace = 1

" 允许插件检测选中的所有行是否都注释
let g:NERDToggleCheckAllLines = 1

" <leader> \: 切换注释状态(gv: 切换状态后依然选中,而不是立即切换到 normal 模式)
" vmap <leader><Bslash> <Plug>NERDCommenterToggle<CR>gv
vmap <leader><Bslash> <Plug>NERDCommenterToggle<CR>

