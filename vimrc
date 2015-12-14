"  Vundle
"
"  -------------------Installation-------------------------
"  $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"  -------------------Setting-------------------------
set nocompatible              " be iMproved, required,关闭vi兼容模式，启用方向键和Backspace
filetype off                  " required,不检查文件类型

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle[https://github.com/VundleVim/Vundle.vim]
Plugin 'gmarik/Vundle.vim'
" Nerdtree[https://github.com/scrooloose/nerdtree]
Plugin 'scrooloose/nerdtree'
" indentLine[https://github.com/Yggdroot/indentLine]
Plugin 'Yggdroot/indentLine'
" tern_for_vim[https://github.com/ternjs/tern_for_vim]
Plugin 'ternjs/tern_for_vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

" Vim设置
"
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
" vim使用自动对齐，也就是把当前行的对起格式应用到下一行；
set smartindent
" 依据上面的对齐格式，智能的选择对齐方式
set autoindent
" TAB键对应的空格数
set tabstop=4
" 每一级锁进长度
set shiftwidth=4 
" 当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set vb t_vb=
" 文件修改之后自动载入
set autoread

" 插件设置
"
" Nerdtree
"
"  1.Ctrl+w+w：将光标从目录窗口和编辑窗口互相切换；
"  2.
"
" F3打开目录树
nmap <silent> <F3> :NERDTreeToggle<CR>
" 不显示的文件
let NERDTreeIgnore=['\.pyc$', '\~$']
" 启动Vim时是否显示目录树
autocmd vimenter * NERDTree
" 退出最后一个buff时也退出nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" intendLine
" 
" 设置颜色
let g:indentLine_color_term = 255
" 设置字符
let g:indentLine_char = '¦'
