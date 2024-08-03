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

" command histoty
set history=1000

" spell language
set spell spelllang=es

" spell jump to next word
map zn <Nop>
nnoremap zn ]szz

" spell options
map zo <Nop>
nnoremap zo z=

" spell change to first sugestion
map zf <Nop>
nnoremap zf 1z=

" spell repeat to all words
map zr <Nop>
nnoremap zr :spellrepall<cr>

" spell correct all with first sugestion
map za <Nop>
nnoremap za 1z=:spellrepall<cr>

" graphic accent
inoremap ;a á
inoremap ;e é
inoremap ;i í
inoremap ;o ó
inoremap ;u ú
inoremap ;; ñ

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

" statusline always visible
set laststatus=2

" vim-plug call
call plug#begin('~/.vim/plugged')

" vimtex
Plug 'lervag/vimtex'
Plug 'tpope/vim-fugitive'

" vim-plug end call
call plug#end()

" fugitive git aliases
command Gs :Git status -b --porcelain
command Gd :Git diff

" stage file
command -bar Ga :Git add % | :Updstl 

" stage file and commit staged files
"command -nargs=1 Gc :Gitcommit
command -bar Gc :silent execute 'Git add % ' | :silent execute 'Git commit -m "'.input('Gc: ').'"' | :Updstl

" commite all changes in the working directory 
"command -nargs=1 Gca :Gitcommitall
command! -bar Gca :silent execute 'Git add .' | :silent execute 'Git commit -m "'.input('Gca: ').'"' | :Updstl
command -bar Gp :Git push | :Updstl

" restore file
command -bar Gr :Gread | :w | :Updstl

" unstage file
command -bar Gu :Git restore --staged -- % | :Updstl

" commit changes and clear command line
function! GitCommit()
	execute "silent Git add % "
	execute "silent Git commit -m <q-args>"
	execute "echon ''"
	execute "Updstl"
endfunction
command! -complete=command Gitcommit call GitCommit()

" commit all changes and clear command line
function! GitCommitAll()
	execute "silent Git add ."
	execute "silent Git commit -m <q-args>"
	execute "echon ''"
	execute "Updstl"
endfunction
command! -complete=command Gitcommitall call GitCommitAll()

" autoupdate status line with git status
augroup GitStatusLine
    au!
	autocmd BufEnter,FocusGained,BufWritePost *
        \ Windo let b:GitStatus = substitute(system("git status --branch --porcelain 2>/dev/null | sed 's/^MM/●+/' | sed 's/^M /●/' | sed 's/^ M/+/' | tr '\n' ' ' | cut -d ' ' -f3- | sed 's/ahead /↑·/'"), "\n", " ", "g")
augroup end
let &statusline = '%{get(b:, "GitStatus", "")}'

" update status line with git status
command Updstl Windo let b:GitStatus = substitute(system("git status --branch --porcelain 2>/dev/null | sed 's/^MM/●+/' | sed 's/^M /●/' | sed 's/^ M/+/' | tr '\n' ' ' | cut -d ' ' -f3- | sed 's/ahead /↑·/'"), "\n", " ", "g")

" windo command focus the current window
function! WinDo(command)
	let currwin=winnr()
	execute 'windo ' . a:command
	execute currwin . 'wincmd w'
endfunction
command! -nargs=+ -complete=command Windo call WinDo(<q-args>)
