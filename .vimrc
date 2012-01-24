" Use tabs 
set noexpandtab
set shiftwidth=3
set softtabstop=3
set tabstop=3

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Show line numbers
set nu

" Only do this part when compiled with support for autocommands
if has("autocmd")

	" Set xml indentation program
	" http://ku1ik.com/2011/09/08/formatting-xml-in-vim-with-indent-command.html
	autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
endif

