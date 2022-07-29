" ================================================================================
" docs: https://github.com/preservim/nerdcommenter
" ================================================================================
" 注释插件快捷键
" 创建插件默认的快捷键映射: https://github.com/preservim/nerdcommenter#default-mappings
let g:NERDCreateDefaultMappings = 0

" 在注释符号后面加一个空格
let g:NERDSpaceDelims = 1

" 多行注释使用
let g:NERDCompactSexyComs = 1

" 注释左对齐而不是随代码缩进
let g:NERDDefaultAlign = 'left'

" 设置一个默认语言的注释作为其他文件注释
let g:NERDAltDelims_java = 1

" 添加你自己的格式覆盖默认的格式
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" 允许注释空行
let g:NERDCommentEmptyLines = 1

" 删除注释结尾空格
let g:NERDTrimTrailingWhitespace = 1

" 允许插件检测选中的所有行是否都注释
let g:NERDToggleCheckAllLines = 1

" <leader> \: 切换注释状态(gv: 切换状态后依然选中,而不是立即切换到 normal 模式)
" vmap <leader><Bslash> <Plug>NERDCommenterToggle<CR>gv
" Ctrl + \: 切换注释状态
vmap <C-\> <Plug>NERDCommenterToggle<CR>
