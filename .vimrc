source ~/.0.vimrc

" Disable arrows in normal and visual modes
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>
" Disable arrows in insert mode
imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>

" cursor on same line as when exit
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" set tabs on pyhon files
aug python
    " ftype/python.vim overwrites this
    au FileType python setlocal ts=4 sw=4 sts=0 noexpandtab
aug end
