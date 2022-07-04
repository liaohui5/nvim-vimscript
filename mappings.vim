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

" gT: 上一个 buffer
" gt: 下一个 buffer
nnoremap gT :bprevious<CR>
nnoremap gt :bnext<CR>
nnoremap g$ :blast<CR>
nnoremap g0 :bfirst<CR>

" <leader>x: 关闭当前 buffer
function! CloseBufferOnly()
  :bp|bd #
endfunction
nnoremap <leader>x :call CloseBufferOnly()<CR>

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

" 当前窗口重新设置大小
nnoremap <C-Right> :vertical-resize-1<CR>
nnoremap <C-Left>  :vertical-resize+1<CR>
nnoremap <C-Up>    :resize+1<CR>
nnoremap <C-Down>  :resize-1<CR>

" 选中当前单词
nnoremap <C-e> bve

" ================================================================================
" plugins key maps override
" ================================================================================
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
" <leader>ff: 格式化当前文件
nmap <leader>ff :CocCommand prettier.formatFile<CR>
vmap <leader>ff :CocCommand prettier.formatFile<CR>

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
" 不用这个 ctrlp 插件搜索文件了, 用 telescope 更加强大
" 但是 telescope 要求的 telescope 要求的neovim版本比较高
" 所以将这个插件的配置还是放到这里
" Plug 'kien/ctrlp.vim'
" Ctrl+p: 搜索文件
" let g:ctrlp_use_caching = 0
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" let g:ctrlp_custom_ignore = {
"   \ 'dir': '\v[\/](node_modules|dist|build|logs|tmp)|(\.(swp|ico|git|svn))$',
"   \ 'file': '\v\.(exe|so|dll|dat|DS_Store)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }

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
" Ctrl + \: 切换注释状态
vmap <C-\> <Plug>NERDCommenterToggle<CR>

" >>>>> voldikss/vim-floaterm <<<<<
" F8: 前一个终端
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
" F9: 后一个终端
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
" F10: 关闭当前终端
nnoremap   <silent>   <F10>   :FloatermKill<CR>
tnoremap   <silent>   <F10>   <C-\><C-n>:FloatermKill<CR>
" F12: 创建一个新的终端
nnoremap   <silent>   <F12>   :FloatermNew<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermNew<CR>
" Ctrl + n: 切换终端显示
nnoremap   <silent>   <C-n>   :FloatermToggle<CR>
tnoremap   <silent>   <C-n>   <C-\><C-n>:FloatermToggle<CR>

" >>>>> nvim-telescope/telescope.nvim <<<<<
" Ctrl + p: 搜索文件
nnoremap <C-p> <cmd>Telescope find_files<CR>

" <leader>fg: 全局搜索字符串
nnoremap <leader>fg <cmd>Telescope live_grep<CR>

" <leader>fb: 搜索buffer
nnoremap <leader>fb <cmd>Telescope buffers<CR>

" <leader>fh: 显示帮助文档
nnoremap <leader>fh <cmd>Telescope help_tags<CR>


" >>>>> luochen1990/rainbow <<<<<
" 启用匹配括号显示不同颜色插件
let g:rainbow_active = 1 
let g:rainbow_conf = {
  \	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
  \	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
  \	'operators': '_,_',
  \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
  \	'separately': {
  \		'*': {},
  \		'tex': {
  \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
  \		},
  \		'lisp': {
  \			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
  \		},
  \		'vim': {
  \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
  \		},
  \		'html': {
  \			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
  \		},
  \		'css': 0,
  \	}
  \}

" >>>>> MattesGroeger/vim-bookmarks <<<<<
" 书签管理插件
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
" 书签标志字符
let g:bookmark_sign = '♥'
" 书签高度
let g:bookmark_highlight_lines = 1
" 不要使用默认的快捷键
let g:bookmark_no_default_key_mappings = 1

" mm: 切换书签状态
nmap mm <Plug>BookmarkToggle

" mi: 添加一个其他类型的书签(可输入文字)
nmap mi <Plug>BookmarkAnnotate

" ma: 查看所有书签
nmap ma <Plug>BookmarkShowAll

" mj: 查看下一个书签
nmap mj <Plug>BookmarkNext

" mk: 查看删一个书签
nmap mk <Plug>BookmarkPrev

" mc: 删除所有书签
nmap mc <Plug>BookmarkClearAll

" >>>>> 907th/vim-auto-save <<<<<
" 自动保存文件插件
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]


" >>>>> editorconfig/editorconfig-vim <<<<<
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
au FileType gitcommit let b:EditorConfig_disable = 1
