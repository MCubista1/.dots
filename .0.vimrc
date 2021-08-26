" oooooo     oooo  .oooooo..o   .oooooo.                   .o8
"  `888.     .8'  d8P'    `Y8  d8P'  `Y8b                 "888
"   `888.   .8'   Y88bo.      888           .ooooo.   .oooo888   .ooooo.
"    `888. .8'     `"Y8888o.  888          d88' `88b d88' `888  d88' `88b
"     `888.8'          `"Y88b 888          888   888 888   888  888ooo888
"      `888'      oo     .d8P `88b    ooo  888   888 888   888  888    .o
"       `8'       8""88888P'   `Y8bood8P'  `Y8bod8P' `Y8bod88P" `Y8bod8P'

"## leader
let mapleader = "\\" 

" Semicolon = esc
inoremap ; <Esc>
cnoremap ; <Esc>
vnoremap ; <Esc>
onoremap ; <Esc>

" Insert and command modes semicolon
inoremap <leader>; ;
cnoremap <leader>; ;

" Enter = new line
nnoremap <CR> o<Esc>

" Backspace = delete left character
nnoremap <BS> i<BS><Right><Esc>

" Y as it should be
nnoremap Y y$

" Previous end of word
nnoremap E ge
vnoremap E ge

" Next f or s match in operation mode
onoremap <CR> ;

" Save, quits and restore file
noremap <Space>w :w<Enter>
noremap <Space>q :wq<Enter>
noremap <Space>Q :q!<Enter>
noremap <Space>E :e!<Enter>

" Center line in window
nnoremap j jzz
vnoremap j jzz
nnoremap k kzz
vnoremap k kzz

" Scroll half screen
nnoremap <C-e> <C-u>zz
vnoremap <C-e> <C-u>zz
nnoremap <C-d> <C-d>zz
vnoremap <C-d> <C-d>zz
nnoremap <C-u> <Nop>
vnoremap <C-u> <Nop>

" Center line on last line
nnoremap G Gzz
vnoremap G Gzz

" Center line on seach
nnoremap ; ;zz
nnoremap , ,zz
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz 
cnoremap <CR> <CR>zz

" First non-blank chatacter
nnoremap [ ^
vnoremap [ ^
onoremap [ ^

" End of line
nnoremap ] $
vnoremap ] $<Left>
onoremap ] $

" Next Parragraph
nnoremap - }}{jzz
vnoremap - }zz
onoremap - }

" Previous Parragraph
nnoremap = k{jzz
vnoremap = {zz
onoremap = {

" to High of window
nnoremap H Hzz
vnoremap H Hzz

" to low of window
nnoremap L Lzz
vnoremap L Lzz

" Toggle caps
nnoremap ` ~
vnoremap ` ~

" Go to mark
nnoremap ~ `
vnoremap ~ `

" Auto closing brackets and quotes
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" Continue in insert mode outside current brackets
inoremap ,, <Esc><Right>a

" Delete right character
inoremap xx <Delete>

" Easy indentation
" In insert mode ctrl-t and ctrl-d
nnoremap > >>
nnoremap < <<

" Visual identaton keeps selection
vnoremap < <gv
vnoremap > >gv


" oooooo     oooo  o8o
"  `888.     .8'   `"'
"   `888.   .8'   oooo  ooo. .oo.  .oo.
"    `888. .8'    `888  `888P"Y88bP"Y88b
"     `888.8'      888   888   888   888
"      `888'       888   888   888   888
"       `8'       o888o o888o o888o o888o

"## Numbers and relative numbers
set nu rnu

" disable ex
map Q <Nop>

" Material Theme
set termguicolors
syntax enable
set background=dark
colorscheme material-theme