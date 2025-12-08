" oooooo     oooo  o8o
"  `888.     .8'   `"'
"   `888.   .8'   oooo  ooo. .oo.  .oo.
"    `888. .8'    `888  `888P"Y88bP"Y88b
"     `888.8'      888   888   888   888
"      `888'       888   888   888   888
"       `8'       o888o o888o o888o o888o

source ~/.vimrc_a

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

" Material Theme
set termguicolors
syntax enable
set background=dark
colorscheme material-theme
