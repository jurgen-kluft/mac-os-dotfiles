set textwidth=128   " Text width maximum chars before wrapping
set tabstop=4       " The number of spaces a tab is
set shiftwidth=4    " Number of spaces to use in auto(indent)

unmap <Leader>w
" unmap <A-c>
" unmap <A-l>

if dein#tap('hop.nvim')
	nnoremap <A-w>     <cmd>HopWord<CR>
	nnoremap <A-c>     <cmd>HopChar1<CR>
	nnoremap <A-l>     <cmd>HopLine<CR>
endif
