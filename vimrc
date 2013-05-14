" Pathogen
execute pathogen#infect()

" Syntex Color Solarized
syntax enable
set background=dark
colorscheme solarized

" Set Line Number
set nu

" Set No Compatible
set nocp

" Set Auto Indent
"set ai

" Set tab space
set ts=4
set sw=4

" Set 80 Columns
" set cc=80

" Key Mapping
nnoremap <silent> <F5>	:NERDTree<CR>
nnoremap <silent> <F7>	gt<CR>
nnoremap <silent> <F8>	gT<CR>

" Format
nnoremap <silent> <C-F>	gg=G<CR>

" Copy, Paste, Select All
noremap <C-c> y
noremap <C-v> P
map <C-A> ggVG

" Block Switch
map <S-LEFT> <C-W>h
map <S-RIGHT> <C-W>l
map <S-UP> <C-W>k
map <S-DOWN> <C-W>j
