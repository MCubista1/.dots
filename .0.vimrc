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

" Join lines
nnoremap M J
vnoremap M J

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
nnoremap H ^
vnoremap H ^
onoremap H ^

" End of line
nnoremap L $
vnoremap L $<Left>
onoremap L $

" Next Parragraph
nnoremap J }}{jzz
vnoremap J }zz
onoremap J }

" Previous Parragraph
nnoremap K k{jzz
vnoremap K {zz
onoremap K {

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

"tab size
set tabstop=4
set shiftwidth=4

" disable ex
map Q <Nop>

" Material Theme
set termguicolors
syntax enable
set background=dark
colorscheme material-theme

" set default syntax if there is none
au BufNewFile,BufRead * if (&syntax == '' || &syntax == 'text') | set syntax=sh | endif

