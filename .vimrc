if v:version > 703
    execute pathogen#infect()
    syntax on
    filetype plugin indent on
endif
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
set relativenumber

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
set tabstop=4

" Number of spaces for indenting
set shiftwidth=4

" Insert/remove number of spaces when tab or backspace pressed
set softtabstop=4

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


autocmd StdinReadPre * let s:std=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


