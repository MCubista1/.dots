" oooooo     oooo  o8o
"  `888.     .8'   `"'
"   `888.   .8'   oooo  ooo. .oo.  .oo.
"    `888. .8'    `888  `888P"Y88bP"Y88b      ____ ___  ____ _____  _____
"     `888.8'      888   888   888   888     / __ `__ \/ __ `/ __ \/ ___/
"      `888'       888   888   888   888    / / / / / / /_/ / /_/ (__  )
"       `8'       o888o o888o o888o o888o  /_/ /_/ /_/\__,_/ .___/____/
"                                                         /_/

"## leader
let mapleader = "\\" 

" Enter = new line
nnoremap <CR> o<Esc>zz

" Normal CR
nnoremap <Leader><CR> <CR>

" Backspace = delete left character
nnoremap <BS> i<BS><Right><Esc>zz

" Y yank as it should be
nnoremap Y y$

" paste "0 yanked text
nnoremap p "0p
vnoremap p "0p

" d to "0 register
nnoremap d "0d
nnoremap D "0D
vnoremap d "0d

" Join lines
nnoremap M J
vnoremap M J

" increment/decrement number
noremap <C-z> <C-x>
noremap <C-x> <C-a>

" First non-blank character
nnoremap H g^
vnoremap H g^
onoremap H g^

" End of line
nnoremap L g$
vnoremap L g$<Left>
onoremap L g$

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

" Visual indentation keeps selection
vnoremap < <gv
vnoremap > >gv

" change between windows h,j,k,l
nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>


"   ______           __
"  / ____/__  ____  / /____  _____
" / /   / _ \/ __ \/ __/ _ \/ ___/
"/ /___/  __/ / / / /_/  __/ /
"\____/\___/_/ /_/\__/\___/_/

"## Center line in window, j/k line on screen
nnoremap <expr> j v:count ? 'jzz' : 'gjzz'
vnoremap <expr> j v:count ? 'jzz' : 'gjzz'
nnoremap <expr> k v:count ? 'kzz' : 'gkzz'
vnoremap <expr> k v:count ? 'kzz' : 'gkzz'

" Next Paragraph
nnoremap J }}{jzz
vnoremap J }zz
onoremap J }

" Previous Paragraph
nnoremap K k{jzz
vnoremap K {zz
onoremap K {

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

" jump to newer/older change list
nnoremap g; g;zz
nnoremap g, g,zz

" jump to the previous cursor position
nnoremap <C-o> ``zz
vnoremap <C-o> ``zz

" center line in insert mode
inoremap <Esc> <Esc>zz
inoremap <Enter> <Enter><Esc>zzi
nnoremap O O<Esc>zzi

" Scroll half screen
nnoremap <C-E> <C-u>zz
vnoremap <C-E> <C-u>zz
nnoremap <C-D> <C-d>zz
vnoremap <C-D> <C-d>zz
nnoremap <C-u> <Nop>
vnoremap <C-u> <Nop>

                                 
"   _____
"  / ___/____  ____ _________
"  \__ \/ __ \/ __ `/ ___/ _ \
" ___/ / /_/ / /_/ / /__/  __/
"/____/ .___/\__,_/\___/\___/
"    /_/

"## Save, quits and restore file
noremap <Space>w :w<Enter>
noremap <Space>q :wq<Enter>
noremap <Space>Q :q!<Enter>
noremap <Space>E :e!<Enter>zz

" Reload vimrc file
noremap <Space>r :so $MYVIMRC<CR>

" paste from clipboard
noremap <Space>p "+p
noremap <Space>P  "+P

" yank to clipboard
noremap <Space>yy "+yy
noremap <Space>Y "+y$
noremap <Space>y "+y

" yank file name to clipboard
nnoremap <Space>f :let @+ = expand("%")<CR>:f<CR>

" search: yanked or selected
nnoremap <Space>/ /<C-r>0<CR>
vnoremap <Space>/ "1y/<C-r>1<CR>

" enclose with parenthesis
nnoremap <Space>ap i(<Esc>wea)<Esc>bh
vnoremap <Space>ap <Esc>a)<Esc>gvo<Esc>i(<Esc>

" enclose with brackets
nnoremap <Space>a[ i[<Esc>wea]<Esc>bh
vnoremap <Space>a[ <Esc>a]<Esc>gvo<Esc>i[<Esc>

" enclose with quotes
nnoremap <Space>a' i'<Esc>wea'<Esc>bh
vnoremap <Space>a' <Esc>a'<Esc>gvo<Esc>i'<Esc>

" display column on status bar
nnoremap <Space>c :set statusline+=col:\ %c <CR>

" change language
nnoremap <Space>le :set spell spelllang=en<CR>
nnoremap <Space>ls :set spell spelllang=es<CR>

" cursor on the middle/top of the screen on paragraph motion
nnoremap <Space>j :nnoremap K k{jzz<CR>:nnoremap J }}{jzz<CR>
nnoremap <Space>k :nnoremap K k{jzt<CR>:nnoremap J }}{jzt<CR>

" toggle line wrap
nnoremap <Space>1 :set wrap!<CR>

" set tab size
nnoremap <Space>7 :set tabstop=4<CR>
nnoremap <Space>8 :set tabstop=8<CR>
nnoremap <Space>9 :set tabstop=12<CR>
nnoremap <Space>0 :set tabstop=20<CR>


"   _____       __         __  _ __        __  _
"  / ___/__  __/ /_  _____/ /_(_) /___  __/ /_(_)___  ____
"  \__ \/ / / / __ \/ ___/ __/ / __/ / / / __/ / __ \/ __ \
" ___/ / /_/ / /_/ (__  ) /_/ / /_/ /_/ / /_/ / /_/ / / / /
"/____/\__,_/_.___/____/\__/_/\__/\__,_/\__/_/\____/_/ /_/
                                                          
"## global substitution: yanked, selected, searched or under cursor
nnoremap <Space>ss :%s/<C-r>0/
vnoremap <Space>ss "1y:%s/<C-r>1/
nnoremap <Space>s/ :%s/<C-r>//
nnoremap <Space>sw :%s/<C-r>=expand("<cword>")<CR>/

" replace spaces with underscores, lowercase
nnoremap <Space>- Vu:s/ /_/g<CR>
vnoremap <Space>- ugv:s/\%V /_/g<CR>

" replace one space for one tab
nmap <Space><tab> :s/ /\t/g<CR>*

" custom substitution
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


"              __
"   ________  / /_
"  / ___/ _ \/ __/
" (__  )  __/ /_
"/____/\___/\__/
                 

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

" set default syntax if there is none
au BufNewFile,BufRead,SourcePre * if (&syntax == '' || &syntax == 'text' || &syntax == 'sh') | set syntax=sh | endif
au BufRead,BufNewFile *mq4,*.mq5 set filetype=sh

" Material Theme
set termguicolors
syntax enable
set background=dark
colorscheme material-theme


"   _____ __             _____                      __  
"  / ___// /_____ ______/ ___/___  ____ ___________/ /_ 
"  \__ \/ __/ __ `/ ___/\__ \/ _ \/ __ `/ ___/ ___/ __ \
" ___/ / /_/ /_/ / /   ___/ /  __/ /_/ / /  / /__/ / / /
"/____/\__/\__,_/_/   /____/\___/\__,_/_/   \___/_/ /_/ 

"## * search forward for matching words, doesn't jump to the next word
let s:savedCpo = &cpo
set cpo&vim

function! s:VStarsearch_searchCWord()
	let wordStr = expand("<cword>")
	if strlen(wordStr) == 0
		echohl ErrorMsg
		echo 'E348: No string under cursor'
		echohl NONE
		return
	endif
	
	" search register <C-r>/ doesn't return \< and \>
	let @/ = wordStr

	let savedUnnamed = @"
	let savedS = @s
	normal! "syiw
	if wordStr != @s
		normal! w
	endif
	let @s = savedS
	let @" = savedUnnamed
endfunction

function! s:VStarsearch_searchVWord()
	let savedUnnamed = @"
	let savedS = @s
	normal! gv"sy
	let @/ = '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')
	let @s = savedS
	let @" = savedUnnamed
endfunction

nnoremap <silent> * :call <SID>VStarsearch_searchCWord()<CR>:set hls<CR>
vnoremap <silent> * :<C-u>call <SID>VStarsearch_searchVWord()<CR>:set hls<CR>

let &cpo = s:savedCpo
