" ================================================================================
" docs:  https://github.com/easymotion/vim-easymotion
" ================================================================================
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
