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

let mapleader="\<Space>"

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

" create file
nnoremap <leader>n :!touch 

" find selection & replace
vnoremap <C-f> gd<ESC>
nnoremap <leader>r :%s/


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
Plug 'crusoexia/vim-monokai'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'jsx', 'typescript', 'css', 'less', 'scss', 'json', 'markdown', 'vue', 'yaml', 'xml', 'html'] }
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" >>>>> coc.nvim <<<<<
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

" goto code navigation.
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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
let g:EasyMotion_do_mapping = 0 " Disable default mappings

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

" >>>>> vim-prettier <<<<<
let g:prettier#autoformat = 1
nmap <leader>f :PrettierAsync<CR>

" >>>>> preservim/nerdtree <<<<<
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" refresh files & focused on NerdTree
function ToggleNERDTreeWithRefresh()
  :NERDTreeFocus
  call feedkeys("R")
endfunction

" nnoremap <C-t> :NERDTree<CR>
nmap <leader>t :call ToggleNERDTreeWithRefresh()<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" >>>>> kien/ctrlp.vim <<<<<
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](node_modules|dist|build|logs|tmp)|(\.(swp|ico|git|svn))$',
  \ 'file': '\v\.(exe|so|dll|dat|DS_Store)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


