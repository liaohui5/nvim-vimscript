" ================================================================================
" docs:  https://github.com/nvim-telescope/telescope.nvim
" ================================================================================
" Ctrl + p: 搜索文件
nnoremap <C-p> <cmd>Telescope find_files<CR>

" <leader>fg: 全局搜索字符串
nnoremap <leader>fg <cmd>Telescope live_grep<CR>

" <leader>fb: 搜索buffer
nnoremap <leader>fb <cmd>Telescope buffers<CR>

" <leader>fh: 显示帮助文档
nnoremap <leader>fh <cmd>Telescope help_tags<CR>