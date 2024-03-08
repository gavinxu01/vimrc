
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
"设置行号
set nu

"设置tags
"set tags=/home/xubin/a960/qcm2290/kernel/kernel_tags

"设置主题
"colorscheme peaksea
colorscheme gruvbox
colorscheme solarized

"设置背景色
set background=dark
"set background=light

"map 测试
map <F2> GoDate: <Esc>:read !date<CR>kJ$
"imap <F2> <CR>Date: <Esc>:read !date<CR>kJ
"
"map  | Normal, Visual and Operator-pending  
"vmap | Visual
"nmap | Normal
"omap | Operator-pending
"map! | Insert and Command-line
"imap | Insert
"cmap | Command-line
"d F7 和 da{执行结果相同
"omap <F7> a{
"noremapping
"noremap  | Normal, Visual and Operator-pending
"vnoremap | Visual
"nnoremap | Normal
"onoremap | Operator-pending
"noremap! | Insert and Command-line
"inoremap | Insert
"cnoremap | Command-line
"
"unmap  | Normal, Visual and Operator-pending
"vunmap | Visual
"nunmap | Normal
"ounmap | Operator-pending
"unmap! | Insert and Command-line
"iunmap | Insert
"cunmap | Command-line

"command 测试
"command DelFirst  1delete

"autocmd自动加载命令
"autocmd FileWritePre * call DateInsert()
"function DateInsert()
"    $delete
"    read !date
"endfunction

"1-1:变量
"let i = 1
"b:name 局部 缓冲区变量
"w:name 局部 用于一个窗口
"g:name 全局变量，适用于函数中
"v:name Vim的预定义变量
"
"g: global variables
"b: Local buffer variables
"w: local window variables
"t: local tab page variables
"s: script-local variables
"l: local function variables
"v: Vim variables.
"
""unlet 删除变量
"1-2:while循环语句
"while i < 5
"   " echo "count is " i
"    let i = i + 1
"endwhile

"1-3
"if {condition}
"   {statements}
"endif

"1-4
"if {condition}
"   {statements}
"else {condition}
"   {statements}
"endif

"1-5
"if {condition}
"   {statements}
"elseif {condition}
"   {statements}
"elseif {condition}
"   {statements}
"endif
"

"don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
"popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline"  }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>"
""==========单独ctags  start ok===============
"let g:Lf_GtagsGutentags = 1
""let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/LeaderF/gtags')
"
"" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
""let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
"let g:gutentags_project_root = ['.vimxubin'] 
"
"" 所生成的数据文件的名称 "
"let g:gutentags_ctags_tagfile = '.tags'
"
"" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
"let s:vim_tags = expand('~/.cache/LeaderF/tags')
"let g:gutentags_cache_dir = s:vim_tags
"" 检测 ~/.cache/tags 不存在就新建 "
"if !isdirectory(s:vim_tags)
"    silent! call mkdir(s:vim_tags, 'p')
"endif
"" 配置 ctags 的参数 "
"let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
"let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
"let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"
""==========单独ctags end  ok===============



"==========gtags ctags  start ok===============
let g:Lf_GtagsGutentags = 1

"enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

"change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1

"let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/LeaderF/gtags')

" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
"let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_project_root = ['.gavinvim'] 

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
"let s:vim_tags = expand('~/.cache/LeaderF/tags')
let s:vim_tags = expand('~/.cache/LeaderF/gtags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

"==========gtags ctags end  ok===============

"https://github.com/Shougo/deoplete.nvim
"NERDTree set
let g:NERDTreeWinPos = "left"

"https://github.com/xavierd/clang_complete.git
let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang.so.1'
