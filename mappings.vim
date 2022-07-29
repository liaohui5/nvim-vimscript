" =============================================
" 快捷键映射
" =============================================
":mapclear - 取消所有自定义快捷键映射
":nmap - 查看 normal 模式所有快捷键
":imap - 查看 insert 模式所有快捷键
":vmap - 查看 visual 模式所有快捷键
":xmap - 查看 visual 模式所有快捷键
":cmap - 查看 command-line 模式所有快捷键
":smap - 查看 select 模式所有快捷键
":omap - 查看 operator 模式所有快捷键

" 映射 <leader> 键为空格, 默认是反斜线
let g:mapleader = "\<SPACE>"

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
vnoremap p "_dhp

" 上/下一个 buffer
nnoremap gT :bprevious<CR>
nnoremap gt :bnext<CR>
nnoremap <S-h> :bprevious<CR>
nnoremap <S-l> :bnext<CR>

" <leader>x: 关闭当前 buffer
function! CloseCurrentBuffer()
  :bp|bd #
endfunction
nnoremap <leader>x :call CloseCurrentBuffer()<CR>

" 向右缩进/向左缩进
vnoremap < <gv
vnoremap > >gv

" 移动到最后, 但是不包括换行符
nnoremap $ $h
vnoremap $ $h

" <leader>n: 创建文件 <leader>df: 删除文件
nnoremap <leader>nf :!touch 
nnoremap <leader>df :!rm -rf 

" <CTRL-f>: 搜索(选中后) <leader>r: 替换
vnoremap <C-f> gd<ESC>
nnoremap <leader>r :%s/

" 当前窗口重新设置大小
nnoremap <C-Right> :vertical-resize-1<CR>
nnoremap <C-Left>  :vertical-resize+1<CR>
nnoremap <C-Up>    :resize+1<CR>
nnoremap <C-Down>  :resize-1<CR>

" 选中当前单词
nnoremap <C-e> viw
nnoremap <C-i> <expr>ciw

" 在窗口之间移动光标
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 上下移动选中内容
xnoremap <C-j> :move '>+1<CR>gv-gv
xnoremap <C-k> :move '<-2<CR>gv-gv

" 命令行左右移动
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>

