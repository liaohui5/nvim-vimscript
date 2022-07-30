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
runtime ./config/airline.vim
runtime ./config/autosave.vim
runtime ./config/coc.vim
runtime ./config/easyalign.vim
runtime ./config/easymotion.vim
runtime ./config/editorconfig.vim
runtime ./config/floaterm.vim
runtime ./config/molokai.vim
runtime ./config/nerdcommenter.vim
runtime ./config/sneak.vim
runtime ./config/telescope.vim
