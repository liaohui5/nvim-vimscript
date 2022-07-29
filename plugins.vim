" ================================================================================
" plugins
" ================================================================================
call plug#begin('~/.config/nvim/plugins')
Plug 'junegunn/vim-easy-align'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'joshdick/onedark.vim'
Plug 'voldikss/vim-floaterm'
Plug '907th/vim-auto-save'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'andys8/vscode-jest-snippets'
Plug 'xabikos/vscode-javascript'
Plug 'sdras/vue-vscode-snippets'
Plug 'algorizen/vscode-javascript-snippets'
call plug#end()

" ================================================================================
" plugins key maps override
" ================================================================================
source ./config/airline.vim
source ./config/autosave.vim
source ./config/coc.vim
source ./config/easyalign.vim
source ./config/easymotion.vim
source ./config/editorconfig.vim
source ./config/floaterm.vim
source ./config/molokai.vim
source ./config/nerdcommenter.vim
source ./config/sneak.vim
source ./config/telescope.vim
