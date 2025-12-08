" oooooo     oooo  o8o
"  `888.     .8'   `"'
"   `888.   .8'   oooo  ooo. .oo.  .oo.
"    `888. .8'    `888  `888P"Y88bP"Y88b
"     `888.8'      888   888   888   888
"      `888'       888   888   888   888
"       `8'       o888o o888o o888o o888o

" rc: clip, language, custom, latex
" a: map, Center, Space, Substitution, set, Tabs, Syntax, StarSearch
" b: plugins

source ~/.vimrc_a
source ~/.vimrc_b

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

" command history
set history=10000

" statusline always visible
set laststatus=2

" Material Theme
set termguicolors
syntax enable
set background=dark
colorscheme material-theme


"        ___
"  _____/ (_)___
" / ___/ / / __ \
"/ /__/ / / /_/ /
"\___/_/_/ .___/
"       /_/

"## paste from clipboard
noremap <Space>p "+p
noremap <Space>P  "+P

" yank to clipboard
noremap <Space>yy "+yy
noremap <Space>Y "+y$
noremap <Space>y "+y

" yank file name to clipboard
nnoremap <Space>f :let @+ = expand("%")<CR>:f<CR>


"    __
"   / /___ _____  ____ ___  ______ _____ ____
"  / / __ `/ __ \/ __ `/ / / / __ `/ __ `/ _ \
" / / /_/ / / / / /_/ / /_/ / /_/ / /_/ /  __/
"/_/\__,_/_/ /_/\__, /\__,_/\__,_/\__, /\___/
"              /____/            /____/

"## spell language
set spell spelllang=es

" change language
nnoremap <Space>le :set spell spelllang=en<CR>
nnoremap <Space>ls :set spell spelllang=es<CR>

" spell jump to next word
map zn <Nop>
nnoremap zn ]szz

" spell options
map zo <Nop>
nnoremap zo z=

" spell change to first suggestion
map zf <Nop>
nnoremap zf 1z=

" spell repeat to all words
map zr <Nop>
nnoremap zr :spellrepall<cr>

" spell correct all with first suggestion
map za <Nop>
nnoremap za 1z=:spellrepall<cr>

" graphic accent
inoremap ;a á
inoremap ;e é
inoremap ;i í
inoremap ;o ó
inoremap ;u ú
inoremap ;; ñ


"                   __
"  _______  _______/ /_____  ____ ___
" / ___/ / / / ___/ __/ __ \/ __ `__ \
"/ /__/ /_/ (__  ) /_/ /_/ / / / / / /
"\___/\__,_/____/\__/\____/_/ /_/ /_/

"## custom substitution
nnoremap <Space>s2 :%s/period1/period1, period2/g<CR>
nnoremap <Space>s3 :%s/period1, period2/period1, period2, period3/g<CR>
nnoremap <Space>s4 :%s/period1, period2, period3/period1, period2, period3, period4/g<CR>


"    __         ______    _  __
"   / /   ____ /_  __/__ | |/ /
"  / /   / __ `// / / _ \|   /
" / /___/ /_/ // / /  __/   |
"/_____/\__,_//_/  \___/_/|_|

"## math mode
inoremap $ $$<Esc>i
inoremap \[ \[\]<Left><Esc>i<CR><Esc>O
