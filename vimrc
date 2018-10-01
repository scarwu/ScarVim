" Pathogen
execute pathogen#infect()
filetype plugin indent on
syntax on

" Syntex Color Solarized
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Powerline
set encoding=utf-8
set laststatus=2

" Set Line Number, No Compatible, Auto Indent
set number
set nocompatible
set binary
set noeol
set scrolloff=3
"set autoindent

" Set tab space, 80 Columns
set tabstop=4
set shiftwidth=4
"set colorcolumn=80
set backspace=indent,eol,start

" Other
let g:vim_markdown_folding_disabled=1

" Key Mapping
nnoremap <silent> <Tab>	:NERDTreeToggle<CR>
nnoremap <silent> <A-RIGHT>	gt<CR>
nnoremap <silent> <A-LEFT>	gT<CR>
nnoremap <C-N> :tabnew<CR>

" Format
nnoremap <silent> <C-F>	gg=G<CR>

" Copy, Paste, Select All
vnoremap <C-C> y
nnoremap <C-V> P
nnoremap <C-A> ggVG
inoremap <C-A> <Esc>ggVG

" Block Switch
map <S-LEFT> <C-W>h
map <S-RIGHT> <C-W>l
map <S-UP> <C-W>k
map <S-DOWN> <C-W>j

noremap <silent> <Leader>w :call ToggleDisplayMove()<CR>

let ToggleDisplayMove_Mode = 0

function PhysicalLineMove()
	silent! nunmap <buffer> <Up>
	silent! nunmap <buffer> <Down>
	silent! nunmap <buffer> <Home>
	silent! nunmap <buffer> <End>
	silent! iunmap <buffer> <Up>
	silent! iunmap <buffer> <Down>
	silent! iunmap <buffer> <Home>
	silent! iunmap <buffer> <End>
	let g:ToggleDisplayMove_Mode = 0
endfunction

function DisplayedLineMove()
	noremap  <buffer> <silent> <Up>   gk
	noremap  <buffer> <silent> <Down> gj
	noremap  <buffer> <silent> <Home> g<Home>
	noremap  <buffer> <silent> <End>  g<End>
	inoremap <buffer> <silent> <Up>   <C-o>gk
	inoremap <buffer> <silent> <Down> <C-o>gj
	inoremap <buffer> <silent> <Home> <C-o>g<Home>
	inoremap <buffer> <silent> <End>  <C-o>g<End>
	let g:ToggleDisplayMove_Mode = 1
endfunction

function ToggleDisplayMove()
	if g:ToggleDisplayMove_Mode
		call PhysicalLineMove()
		echo "Move cursor now base on PHYSICAL LINE"
	else
		call DisplayedLineMove()
		echo "Move cursor now base on DISPLAYED LINE"
	endif
endfunction

call DisplayedLineMove()