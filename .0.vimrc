" oooooo     oooo  .oooooo..o   .oooooo.                   .o8
"  `888.     .8'  d8P'    `Y8  d8P'  `Y8b                 "888
"   `888.   .8'   Y88bo.      888           .ooooo.   .oooo888   .ooooo.
"    `888. .8'     `"Y8888o.  888          d88' `88b d88' `888  d88' `88b
"     `888.8'          `"Y88b 888          888   888 888   888  888ooo888
"      `888'      oo     .d8P `88b    ooo  888   888 888   888  888    .o
"       `8'       8""88888P'   `Y8bood8P'  `Y8bod8P' `Y8bod88P" `Y8bod8P'

"## leader
let mapleader = "\\" 

" Enter = new line
nnoremap <CR> o<Esc>zz
" nnoremap <CR> <CR>zz
" inoremap oo <CR>

" Normal CR
nnoremap <Leader><CR> <CR>

" Backspace = delete left character
nnoremap <BS> i<BS><Right><Esc>zz

" Y yank as it should be
nnoremap Y y$

" Join lines
nnoremap M J
vnoremap M J

" increment/decrement number
noremap <C-z> <C-x>
noremap <C-x> <C-a>

" Save, quits and restore file
noremap <Space>w :w<Enter>
noremap <Space>q :wq<Enter>
noremap <Space>Q :q!<Enter>
noremap <Space>E :e!<Enter>zz

" Center line in window, j/k line on screen
nnoremap <expr> j v:count ? 'jzz' : 'gjzz'
vnoremap <expr> j v:count ? 'jzz' : 'gjzz'
nnoremap <expr> k v:count ? 'kzz' : 'gkzz'
vnoremap <expr> k v:count ? 'kzz' : 'gkzz'

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

" Center line on search
nnoremap ; ;zz
nnoremap , ,zz
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz 
cnoremap <silent><expr> <enter> index(['/', '?'], getcmdtype()) >= 0 ? '<enter>zz' : '<enter>'

" older/newer cursor position in jump list
nnoremap '' <C-o>zz
nnoremap "" <C-i>zz

" Return to last change position
nnoremap '" `.zz
vnoremap '" `.zz

" jump to the previous cursor position
nnoremap <C-o> ``zz
vnoremap <C-o> ``zz

" jump to newer/older change list
nnoremap g; g;zz
nnoremap g, g,zz

" First non-blank character
nnoremap H g^
vnoremap H g^
onoremap H g^

" End of line
nnoremap L g$
vnoremap L g$<Left>
onoremap L g$

" Next Paragraph
nnoremap J }}{jzz
vnoremap J }zz
onoremap J }

" Previous Paragraph
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
inoremap ` ’

" Latex math mode
inoremap $ $$<Esc>i
inoremap \[ \[\]<Left><Esc>i<CR><Esc>O

" Continue in insert mode outside current brackets
inoremap ,, <Esc><Right>a

" Delete right character
inoremap xx <Delete>

" Visual indentation keeps selection
vnoremap < <gv
vnoremap > >gv

" center line in insert mode
inoremap <Esc> <Esc>zz
inoremap <Enter> <Enter><Esc>zzi
nnoremap O O<Esc>zzi

" change between windows h,j,k,l
nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>

" paste from clipboard
noremap <Space>p "+p
"noremap <Space>P  a<Space><Esc>"+p
noremap <Space>P  "+P

" yank to clipboard
noremap <Space>yy "+yy
noremap <Space>Y "+y$
noremap <Space>y "+y

" yank file name to clipboard
nnoremap <Space>f :let @+ = expand("%")<CR>:f<CR>

" cursor on the top of the screen on paragraph motion
nnoremap <Space>j :nnoremap K k{jzt<CR>:nnoremap J }}{jzt<CR>
nnoremap <Space>k :nnoremap K k{jzz<CR>:nnoremap J }}{jzz<CR>

" set tab size
nnoremap <Space>4 :set tabstop=4<CR>
nnoremap <Space>8 :set tabstop=8<CR>
nnoremap <Space>9 :set tabstop=12<CR>

" display column on status bar
nnoremap <Space>c :set statusline+=col:\ %c <CR>

" toggle line wrap
nnoremap <Space>1 :set wrap!<CR>

" replace spaces with underscores, lowercase
nnoremap <Space>- Vgu:s/ /_/g<CR>

" replace one space for one tab
nnoremap <Space><tab> :s/ /\t/g<CR>

" Reload vimrc file
noremap <Space>r :so $MYVIMRC<Enter>

" custom substitution
nnoremap <Space>s2 :%s/period1/period1, period2/g
nnoremap <Space>s3 :%s/period1/period1, period2, period3/g



" oooooo     oooo  o8o
"  `888.     .8'   `"'
"   `888.   .8'   oooo  ooo. .oo.  .oo.
"    `888. .8'    `888  `888P"Y88bP"Y88b
"     `888.8'      888   888   888   888
"      `888'       888   888   888   888
"       `8'       o888o o888o o888o o888o

"## Numbers and relative numbers
set nu rnu

" insensitive case search
set ignorecase

" highlight search
set hlsearch

" incremental search
set incsearch

" tab size
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

" visible spaces and tabs
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" disable ex
map Q <Nop>

" center line at start
au BufEnter * :normal! zz

" wrap break line at space
set linebreak

" split panes to the right and below
set splitright
set splitbelow

" Material Theme
set termguicolors
syntax enable
set background=dark
colorscheme material-theme

" set default syntax if there is none
au BufNewFile,BufRead,SourcePre * if (&syntax == '' || &syntax == 'text' || &syntax == 'sh') | set syntax=sh | endif
au BufRead,BufNewFile *mq4,*.mq5 set filetype=sh
