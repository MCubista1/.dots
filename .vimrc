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

" spell language
set spell spelllang=es

" spell correct all
map za <Nop>
nnoremap za 1z=:spellrepall<cr>

" spell repeat to all words
map zr <Nop>
nnoremap zr :spellrepall<cr>

" spell options
map zo <Nop>
nnoremap zo z=

" spell next word
map zn <Nop>
nnoremap zn ]szz

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

" vim-plug call
call plug#begin('~/.vim/plugged')

" vimtex
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'

" vim-plug end call
call plug#end()

" fugitive git aliases
command -bar Gc :silent Git add % | :silent Git commit
command -bar Gca :silent Git add . | :silent Git commit
command Gp :Git push
