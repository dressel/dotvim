" Begin Vundle chunk
"
set nocompatible				" required
filetype off					" required, turn on after Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'		" Required for Vundle
Plugin 'JuliaLang/julia-vim'	" Julia plugin
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on		" turn filetype back on
" End Vundle chunk

" Solarized Colors
" 0 = not solarized
" 1 = solarized
" I played around with this when I was trying to solarize my color scheme
" I've basically decided not to do that, but leave this in here.
if 0
	set t_Co=16
	syntax enable
	set background=dark
	colorscheme solarized
else
	" Make comment text font color lighter to read in the dark
	" Only do if not solarized
	:hi Comment ctermfg=6
endif


 " Line numbers
:set nu

" Map ;; and jk to escape in insert mode
:inoremap ;; <Esc>
:inoremap jk <Esc>

" Map ; to : in command mode.
" ; will now initiate commands (easier than :, no shift)
:nnoremap ; :
:nnoremap : ;

"for tabs to be 4
:set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" so enter enters a new line
:nnoremap <CR> o<Esc>

" Highlight search
" :nohlsearch to get rid of it
:set hlsearch

" GOING OVER 80 CHARACTERS?
" Stack Overflow solution: 
" Surrounds any 81st char and all following chars whenever you get to 80 chars
" or more
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"
" Damian Conway solution:
" Just surrounds 81st char in magenta whenever you get to 80 chars or more.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Print line numbers if you print
set printoptions=number:y
