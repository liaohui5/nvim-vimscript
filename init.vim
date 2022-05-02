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
set tabstop=4         " tab size 4 space
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab          " auto indent
set autoindent
set hidden            " TextEdit might fail if hidden is not set.
set nobackup          " Some servers have issues with backup files
set nowritebackup

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
nmap <Leader>w :w<CR>
nmap <Leader>s :w<CR>
nmap <Leader>x :x<CR>
nmap - :nohl<CR>
nnoremap x "_x
vnoremap x "_x

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
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'jsx', 'typescript', 'css', 'less', 'scss', 'json', 'markdown', 'vue', 'yaml', 'xml', 'html'] }
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdtree'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'kien/ctrlp.vim'
call plug#end()

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
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" >>>>> vim-easymotion <<<<<
let g:sneak#label = 1
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S

" >>>>> vim-prettier <<<<<
let g:prettier#autoformat = 1
nmap <Leader>f :PrettierAsync<CR>

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

" nnoremap <C-n> :NERDTree<CR>
nnoremap <leader>t :NERDTreeFocus<CR>
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


