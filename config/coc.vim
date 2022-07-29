" ================================================================================
" docs: 
" https://github.com/neoclide/coc.nvim
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#why-are-coc-extensions-needed
" ================================================================================
" snippets 代码提示插件:
" Plug 'xabikos/vscode-javascript'
" Plug 'sdras/vue-vscode-snippets'
" Plug 'algorizen/vscode-javascript-snippets'
let g:coc_global_extensions = [
  \'coc-translator',
  \'coc-snippets',
  \'coc-scssmodules',
  \'coc-prettier',
  \'coc-pairs',
  \'coc-yank',
  \'coc-marketplace',
  \'coc-html-css-support',
  \'coc-html',
  \'coc-highlight',
  \'coc-git',
  \'coc-explorer',
  \'coc-eslint',
  \'coc-emmet',
  \'coc-diagnostic',
  \'coc-yaml',
  \'coc-tsserver',
  \'coc-tslint',
  \'coc-sql',
  \'coc-sh',
  \'coc-json',
  \'coc-docker',
  \'coc-css',
  \'@yaegassy/coc-volar-tools',
  \'@yaegassy/coc-volar',
  \'@yaegassy/coc-nginx',
  \]

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

" <leader>fy: 翻译(需要插件: coc-translator)
vmap <leader>fy <Plug>(coc-translator-pv)

" <leader>ff: 格式化当前文件(需要插件: coc-prettier)
nmap <leader>ff :CocCommand prettier.formatFile<CR>

" Ctrl+t: 显示侧边栏文件目录树(需要插件: coc-explorer)
nnoremap <C-t> :CocCommand explorer<CR>