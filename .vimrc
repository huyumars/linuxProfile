set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/vcm_global_ycm_extra_conf.py'


" Set encoding
set enc=utf8

" Map C-c as the Esc
" C-c by default is not the same as the escape
" For instance, when multiple lines selection is replaced, it only replaces one line
inoremap <C-c> <Esc>

" Map nohl to double Esc
nnoremap <silent> <Esc><Esc> :nohl<CR> 

" Enable syntax
syntax enable
if &term != "linux"
    try
        colorscheme monokai
    catch
        " Colorscheme not found
    endtry
endif



" Set number
set number

" Set relative number
" set relativenumber

" Scrolloff
set scrolloff=6

" Do not remember search history after close
set viminfo+=/0

" Listing characters
if &term != "linux"
    set list
    set listchars=trail:-,tab:>\ 
endif


" Window resizing binds
" This function is called everytime you enter a window.
au! WinEnter * call SetWinAdjust()
fun! SetWinAdjust()
    if winnr() > 1
        nnoremap <C-w><C-j> :res -3<CR>
        nnoremap <C-w><C-k> :res +3<CR>
        nnoremap <C-w><C-h> :vertical res +3<CR>
        nnoremap <C-w><C-l> :vertical res -3<CR>
    else
        nnoremap <C-w><C-j> :res +3<CR>
        nnoremap <C-w><C-k> :res -3<CR>
        nnoremap <C-w><C-h> :vertical res -3<CR>
        nnoremap <C-w><C-l> :vertical res +3<CR>
    endif
endfun

" Insert spaces everytime a tab is pressed
set expandtab

" Number of spaces inserted when a tab is pressed
set tabstop=2

" Number of spaces for indenting
set shiftwidth=2

" Insert/remove number of spaces when tab or backspace pressed
set softtabstop=2

" File-type based indentation
filetype plugin indent on

" Always show statusline
set laststatus=2

" Statusline
" Filename
set statusline=\ %t
" Modified flag
set statusline+=%m
" File encoding
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}]
" File format
set statusline+=[%{&ff}]
" Filetype
set statusline+=%y
" Left/right separator
set statusline+=%=
" Cursor column
"set statusline+=%c\ 
" Cursor line/total lines
set statusline+=%l/%L
" Percent through file
set statusline+=\ %P\ 
" Show command
set showcmd

set term=screen-256color
set t_ut=

"youCompleteMe Setting
nnoremap ygt :YcmCompleter GoTo<CR>

"vim-cpp-enhanced Setting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_global_extra_config.py'
let g:ycm_confirm_extra_conf = 0

autocmd StdinReadPre * let s:std=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


