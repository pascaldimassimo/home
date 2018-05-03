set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" Use tabs 
set noexpandtab
set shiftwidth=3
set softtabstop=3
set tabstop=3

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Show line numbers
set nu

" netrw settings (activate with :Vex)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" change <leader> key
let mapleader="\<Space>"

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>

" Toggle between buffers
nnoremap <leader># :b#<CR>

" Show list of buffers and prompt for a buffer index to swith to
nnoremap gb :ls<CR>:b<Space>
