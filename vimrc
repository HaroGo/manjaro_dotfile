"""" 基本设置
" 设置行号
set nu
" 突出显示当前行
set cursorline
" 括号匹配
set showmatch
" 缩进
set tabstop=2
set shiftwidth=2
set autoindent
" 语法高亮 
syntax on
"允许折叠
set foldenable
"手动折叠
set foldmethod=manual 
" 设置leader键
let mapleader=","
let g:mapleader=","
" 文件检测
filetype on
filetype indent on
" 自动载入文件
set autoread
" 2
set tabstop=4
set shiftwidth=4
" 去掉输入错误的提示声音
set novisualbell
set noerrorbells
set t_vb=
set tm=500
" 标尺
set ruler
" 搜索忽略大小写
set ignorecase
" 关闭兼容模式
set nocompatible
" 不想帮助可怜的乌干达儿童
set shortmess=atI
" 退出出入模式自动保存
au InsertLeave *.go *.py, *.js, *.ts, *.vue, *.jsx write

" 代码折叠自定义快捷键
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun
" 智能缩进和自动缩进
set smartindent
set autoindent
"""" 键盘映射
" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
" 创建窗口和切换窗口
nnoremap vs <C-w>v
nnoremap sp <C-w>s
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" tab 切换
map <leader>tw :tabnew<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
nnoremap tc :tabclose<cr>
nnoremap to :tabonly<cr>
" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 :tabfirst<cr>
noremap <leader>0 :tablast<cr>

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

" Esc 替换
inoremap jj <Esc> 

"" 
vmap <leader>c "+yy
nmap <leader>c "+yy
nmap <leader>v "+p

"""" 插件
call plug#begin('~/.vim/plugged')

"airline and airline-theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin'
" Javascript & React & jsx
Plug 'othree/javascript-libraries-syntax.vim'
" Tagbar
Plug 'majutsushi/tagbar'
" editor config
Plug 'editorconfig/editorconfig-vim'

Plug 'sbdchd/neoformat'
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-vetur'
Plug 'neoclide/coc-git'
Plug 'neoclide/coc-jest'
Plug 'neoclide/coc-snippets'
Plug 'neoclide/coc-java'
Plug 'neoclide/coc-emmet'
Plug 'neoclide/coc-wxml'
Plug 'neoclide/vim-jsx-improve'
call plug#end()
" vim plug setting
"" vim-airline & vim-airline-themes
let g:airline#extension#tabline#enable = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
"" nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'S',
                \ 'Untracked' :'UT',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'UM',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'D',
                \ 'Ignored'   :'I',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1
"" javascript libraries syntax
let g:used_javascript_libs = 'underscore,backbone'
"" tagbar
nmap tt  :TagbarToggle<CR> 

