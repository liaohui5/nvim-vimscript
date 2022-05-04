" .----------------.  .----------------.  .----------------.  .----------------. 
"| .--------------. || .--------------. || .--------------. || .--------------. |
"| |   ______     | || |      __      | || |    _______   | || |  _________   | |
"| |  |_   _ \    | || |     /  \     | || |   /  ___  |  | || | |_   ___  |  | |
"| |    | |_) |   | || |    / /\ \    | || |  |  (__ \_|  | || |   | |_  \_|  | |
"| |    |  __'.   | || |   / ____ \   | || |   '.___`-.   | || |   |  _|  _   | |
"| |   _| |__) |  | || | _/ /    \ \_ | || |  |`\____) |  | || |  _| |___/ |  | |
"| |  |_______/   | || ||____|  |____|| || |  |_______.'  | || | |_________|  | |
"| |              | || |              | || |              | || |              | |
"| '--------------' || '--------------' || '--------------' || '--------------' |
" '----------------'  '----------------'  '----------------'  '----------------' 
set number            " show line numbers
syntax enable         " allow syntax highlight
set expandtab         " tab to space
set cursorline        " highlight current line 
set clipboard=unnamed " use operate system clipboard
set tabstop=2         " tab size 2 space
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab          " auto indent
set autoindent
set cindent
set encoding=utf-8    " utf-8
set hidden            " TextEdit might fail if hidden is not set.
set nobackup          " Some servers have issues with backup files
set nowritebackup
set cmdheight=1       " command line hight
set updatetime=100    " update time
set fo-=r             " cancel auto comment
filetype plugin on    " let the plugin recognize the file type
set nowrap

" .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .----------------. 
"| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
"| |  ___  ____   | || |  _________   | || |  ____  ____  | || | ____    ____ | || |      __      | || |   ______     | || |    _______   | |
"| | |_  ||_  _|  | || | |_   ___  |  | || | |_  _||_  _| | || ||_   \  /   _|| || |     /  \     | || |  |_   __ \   | || |   /  ___  |  | |
"| |   | |_/ /    | || |   | |_  \_|  | || |   \ \  / /   | || |  |   \/   |  | || |    / /\ \    | || |    | |__) |  | || |  |  (__ \_|  | |
"| |   |  __'.    | || |   |  _|  _   | || |    \ \/ /    | || |  | |\  /| |  | || |   / ____ \   | || |    |  ___/   | || |   '.___`-.   | |
"| |  _| |  \ \_  | || |  _| |___/ |  | || |    _|  |_    | || | _| |_\/_| |_ | || | _/ /    \ \_ | || |   _| |_      | || |  |`\____) |  | |
"| | |____||____| | || | |_________|  | || |   |______|   | || ||_____||_____|| || ||____|  |____|| || |  |_____|     | || |  |_______.'  | |
"| |              | || |              | || |              | || |              | || |              | || |              | || |              | |
"| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
" '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'
":nmap - Display normal mode maps
":imap - Display insert mode maps
":vmap - Display visual and select mode maps
":smap - Display select mode maps
":xmap - Display visual mode maps
":cmap - Display command-line mode maps
":omap - Display operator pending mode maps
let g:mapleader="\<SPACE>"

" <leader>0 : reload neovim configs
nnoremap <leader>0 :source ~/.config/nvim/init.vim <CR> 

" no highlight
nnoremap - :nohl<CR>

" <leader>s/<leader>w: save current file, <leader>x: save file and quit vim
nnoremap <leader>w :w<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>x :x<CR>

" only delete not cut
nnoremap x "_x
vnoremap x "_x
vnoremap s "_s
nnoremap s "_s

" next buffer & prev buffer
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bn :bnext<CR>

" close current buffer but dont close vim
func CloseBufferOnly()
  :bp|bd #
endf
nnoremap <leader>bc :call CloseBufferOnly()<CR>

" indent & outdent
vnoremap <Tab> >
vnoremap <leader><Tab> <

" move to end of line but whitout <CR>
nnoremap $ $h
vnoremap $ $h

" create file & delte files(Notice a space at the end of the line)
nnoremap <leader>n :!touch 
nnoremap <leader>df :!rm -rf 

" find selection & replace
vnoremap <C-f> gd<ESC>
nnoremap <leader>r :%s/

" window resize
nnoremap <right> :vertical-resize-1<cr>
nnoremap <left> :vertical-resize+1<cr>
nnoremap <up> :resize-1<cr>
nnoremap <down> :resize+1<cr>

" .----------------.  .----------------.  .----------------.  .----------------.  .----------------.  .-----------------. .----------------. 
"| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |
"| |   ______     | || |   _____      | || | _____  _____ | || |    ______    | || |     _____    | || | ____  _____  | || |    _______   | |
"| |  |_   __ \   | || |  |_   _|     | || ||_   _||_   _|| || |  .' ___  |   | || |    |_   _|   | || ||_   \|_   _| | || |   /  ___  |  | |
"| |    | |__) |  | || |    | |       | || |  | |    | |  | || | / .'   \_|   | || |      | |     | || |  |   \ | |   | || |  |  (__ \_|  | |
"| |    |  ___/   | || |    | |   _   | || |  | '    ' |  | || | | |    ____  | || |      | |     | || |  | |\ \| |   | || |   '.___`-.   | |
"| |   _| |_      | || |   _| |__/ |  | || |   \ `--' /   | || | \ `.___]  _| | || |     _| |_    | || | _| |_\   |_  | || |  |`\____) |  | |
"| |  |_____|     | || |  |________|  | || |    `.__.'    | || |  `._____.'   | || |    |_____|   | || ||_____|\____| | || |  |_______.'  | |
"| |              | || |              | || |              | || |              | || |              | || |              | || |              | |
"| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |
" '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------'  '----------------' 
" install-plugins
call plug#begin('~/.config/nvim/plugins')
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'crusoexia/vim-monokai'
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


" >>>>> coc.nvim <<<<<
" install coc extensions: https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#why-are-coc-extensions-needed
let g:coc_global_extensions = [
  \'coc-json',
  \'coc-css',
  \'coc-cssmodules',
  \'coc-stylelint',
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
  \'coc-vetur',
  \'coc-yaml',
  \'coc-yank',
  \'coc-explorer',
  \'coc-emmet',
  \'coc-webpack',
  \'coc-marketplace',
  \'coc-webview',
  \'coc-markdown-preview-enhanced',
  \'@yaegassy/coc-volar',
  \'@yaegassy/coc-volar-tools',
  \'@yaegassy/coc-nginx',
  \]

" Always show the signcolumn
if has("nvim-0.5.0") || has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" i mode<c-l>: show completion popwindow
inoremap <silent><expr> <c-l> coc#refresh()

" goto code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use enter select completion item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" prev error & next error
nmap <silent><leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent><leader>] <Plug>(coc-diagnostic-next)

" <leader>h: show documentation in preview window.
nnoremap <silent><leader>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" show codeaction menus
xmap <leader>m <Plug>(coc-codeaction-selected)
nmap <leader>m <Plug>(coc-codeaction-selected)

" show codeaction menus
nmap <leader>ac <Plug>(coc-codeaction)

" auto fix
nmap <leader>qf <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl <Plug>(coc-codelens-action)

" statusline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" translator
nmap <leader>ts <Plug>(coc-translator-p)
vmap <leader>ts <Plug>(coc-translator-pv)

" open markdown preview on browser
nmap <leader>om :CocCommand markdown-preview-enhanced.openPreview<CR>


" >>>>> glepnir/dashboard-nvim <<<<<
let g:dashboard_default_executive ='clap'
nmap <leader>ss :<C-u>SessionSave<CR>
nmap <leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <leader>ff :DashboardFindFile<CR>
nnoremap <silent> <leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <leader>fa :DashboardFindWord<CR>
nnoremap <silent> <leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <leader>cn :DashboardNewFile<CR>

" >>>>> preservim/nerdcommenter <<<<<
" close wraning
let g:NERDSuppressWarnings = 1

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" toggle comment status
nnoremap <silent> <c-\\> :call NERDComment('nx', 'Invert')<CR>
vnoremap <silent> <c-\\> :call NERDComment('nx', 'Invert')<CR>

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
" Disable default mappings
let g:EasyMotion_do_mapping = 0

" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)

" `s{char}{char}{label}`
"nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)


" >>>>> vim-sneak <<<<<
let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

" >>>>> coc-prettier <<<<<
nmap <leader>f :CocCommand prettier.formatFile<CR>
vmap <leader>f :CocCommand prettier.formatFile<CR>

" >>>>> coc-explorer <<<<<

nnoremap <C-t> :CocCommand explorer<CR>

" >>>>> kien/ctrlp.vim <<<<<
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](node_modules|dist|build|logs|tmp)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(exe|so|dll|dat|DS_Store)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


