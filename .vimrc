"turn off the vi compatible mode
set nocompatible 
"set verbosefile=~/vimdebug
"automatical grammar highlight
colorscheme molokai 
"this line solved my problem that Mac terminal Vim will only use backspace
"when at the end of a line
set backspace=indent,eol,start
"turn on the line number
set number
"highlight the current line
set cursorline 
"turn on the status bar ruler
set ruler   
"set the width of >> and << as 4   
set shiftwidth=2   
 "set the length of tab as 4
set tabstop=2   
 "no backup when cover a file
set nobackup     
"switch the current directory to the directory of editing file
set autochdir 
"搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set ignorecase smartcase     
"set clipboard=unnamed
"智能缩进
set cindent
"插入括号时，短暂跳转到匹配的对应括号，以及设定跳转到括号的时间
set path=$PWD/**
"命令行的行数为1
set cmdheight=2
"显示状态栏（默认值为1，无法显示状态栏）
set laststatus=2
"设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

"使用合适的空格数插入tab时
set expandtab
"开启时，在一行最前面插入的tab长度取决于其他行的shiftwidth和tabstop
set smarttab
"在状态栏标示出命令
set showcmd

set incsearch
set hlsearch
"不要自动换行
"set nowrap
"不要在行内自动换行，再长也不换
set textwidth=0

set wrapmargin=0

set formatoptions+=mM

set mouse=a

let mapleader=","
set timeout timeoutlen=500
syntax on
"regard stylus as less
autocmd BufNewFile,BufRead *.styl set filetype=less
autocmd BufNewFile,BufRead *.tsx  set filetype=javascript
autocmd BufNewFile,BufRead *.ts set filetype=javascript

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end()
filetype plugin indent on   
"手动设置触发器
let g:ycm_semantic_triggers={
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }

let javascript_enable_domhtmlcss=1
"python path manual setup
let g:ycm_path_to_python_interpreter="/usr/local/bin/python"
"Ctrl+N 打开/关闭Nerdtree
map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 不显示这些文件
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] 
"ignore files in NERDTree
" 不显示项目树上额外的信息，例如帮助、提示什么的
let NERDTreeMinimalUI=1
"ctrip configurarion
let g:ctrlp_working_path_mode='ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore={'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}

"PowerLine configuration
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols='fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

"vim-scripts/loremipsum
inoremap Lorem <Esc><Esc>:Loremipsum 20<CR>
inoremap Ipsum <Esc><Esc>:Loremipsum 70<CR>
"切换自定义快捷键
noremap <C-L> <Esc>:tabnext<CR>
noremap <C-H> <Esc>:tabprevious<CR>
noremap <C-M> <Esc>:source ~/.vimrc<CR>
inoremap `` <C-[>
inoremap ,, <Esc>^i<CR><Esc>ki
"复制粘贴
vmap ;<c-c> y:call system("pbcopy", getreg("\""))<CR>
nmap ;<c-v> :call setreg("\"",system("pbpaste"))<CR>p
"markdown
let g:vim_markdown_folding_disabled = 1
au FileType markdown inoremap ;<c-b> ****<Esc>hi
au FileType markdown inoremap ;<c-i> **<Esc>i
"tmux configuration
if exists('$TMUX')
    set term=screen-256color
endif
"emmet
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

"eslint
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

"Plugin
Plugin 'tmhedberg/SimpylFold'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'hail2u/vim-css3-syntax'
"Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'marijnh/tern_for_vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-scripts/loremipsum'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'Yggdroot/indentLine'

