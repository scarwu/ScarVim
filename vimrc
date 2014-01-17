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
set nu
set nocp
set binary
set noeol
"set ai

" Set tab space, 80 Columns
set ts=4
set sw=4
"set cc=80

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
