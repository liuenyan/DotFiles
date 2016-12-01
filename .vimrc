set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" ---------------------------------------------------
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'Rip-Rip/clang_complete'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'trusktr/seti.vim'
" ---------------------------------------------------
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'a.vim'
" Plugin 'taglist.vim'
Plugin 'bufexplorer.zip'
Plugin 'The-NERD-Tree'
" Plugin 'minibufexpl.vim'
" Plugin 'OmniCppComplete'
" Plugin 'winmanager'
" ---------------------------------------------------

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" ---------------------------------------------------
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" ---------------------------------------------------
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" ---------------------------------------------------
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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

""记录上一次的光标位置
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

source $VIMRUNTIME/ftplugin/man.vim
syntax enable
syntax on

"" 禁用方向键
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

if has("gui_running")
    colorscheme molokai
    set guifont=Droid\ Sans\ Mono\ 11
else
    colorscheme desert
    "molokai
    "colorscheme molokai
    "set t_Co=256
    "solarized
    "set t_Co=256
    "let g:solarized_termcolors=256
    "set background=dark
    "colorscheme solarized
endif

set mouse=a
set fileencodings=utf8,gbk,cp936
set number
set hlsearch
set autoindent
set smartindent
set backspace=indent,eol,start

"" 设置 80 列标尺
set textwidth=78
set colorcolumn=+2
highlight ColorColumn ctermbg=gray

"" 缩进相关
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"" 设置YouCompleteMe
let g:ycm_global_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

"" taglist设置
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_File_Fold_Auto_close=1
"let Tlist_Use_Right_Window=1
"let Tlist_Show_Menu=1
"let Tlist_Auto_Open=1

"" clang_complete 设置 (libclang.so 所在的路径)
"" let g:clang_library_path='/usr/lib64/llvm/'

"" delimitMate 设置
let delimitMate_expand_cr=1

"" 快捷键设置
map <F2> :NERDTreeToggle<cr>
map <F3> :BufExplorer<cr>
nmap <F4> :TagbarToggle<cr>

