" ================================================================================
" docs: https://github.com/voldikss/vim-floaterm
" ================================================================================

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