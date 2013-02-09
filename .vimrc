""""""""""""""""""""""""""""""""""
" Syntax and indent
""""""""""""""""""""""""""""""""""
syntax on " Turn on syntax highligthing
set showmatch  "Show matching bracets when text indicator is over them

colorscheme delek

" Switch on filetype detection and loads 
" indent file (indent.vim) for specific file types
filetype indent on
filetype on
set autoindent " Copy indent from the row above
set si " Smart indent

""""""""""""""""""""""""""""""""""
" Some other confy settings
""""""""""""""""""""""""""""""""""
set nu " Number lines
set hls " highlight search
set lbr " linebreak

" Use 4 space instead of tab during format
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Always display status line
set laststatus=2

" swp directory
set directory=~/.vim/tmp

" utf-8 encoding
set encoding=utf-8

autocmd BufWritePre *.scala :%s/\s\+$//e

" Shorcut key-bindings
map <F2> :mksession! ~/.vim/tmp/_session <cr> " Quick write session with F2
map <F3> :source ~/.vim/tmp/_session <cr>     " And load session with F3

" close parentheses and backets
inoremap (             ()<Left>
inoremap (<cr>         (<cr>)<Esc>0
inoremap ((            (
inoremap ()            ()

inoremap {             {}<Left>
inoremap {<cr>         {<cr>}<Esc>0
inoremap {}            {}
