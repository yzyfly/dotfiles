" 以下内容用于Vundle的配置
set nocompatible              " be iMproved, required,关闭vi兼容模式，启用方向键和Backspace
filetype off                  " required,不检查文件类型

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 设置显示行号
set number
" 自动语法高亮
syntax on
" 突出显示当前行
set cursorline
" 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
" 在编辑过程中，在右下角显示光标位置的状态行
set ruler
" vim使用自动对起，也就是把当前行的对起格式应用到下一行；
set smartindent
" 依据上面的对起格式，智能的选择对起方式，对于类似C语言编
set autoindent
" 当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set vb t_vb=
" 文件修改之后自动载入
set autoread

""""""""""""""""""""""""""""""KEY MAPPING""""""""""""""""""""""""""""

" F3打开目录树
nmap <silent> <F3> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""PLUGIN CONFIG""""""""""""""""""""""""""

" NERDTREE
" 不显示的文件
let NERDTreeIgnore=['\.pyc$', '\~$']
" show nerdtree when starts up
"autocmd vimenter * NERDTree
" 退出最后一个buff时也退出nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" airline
let g:airline_section_y = '%{strftime("%H:%M")}'
" 开启tabline
" let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
