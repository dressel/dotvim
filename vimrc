" Begin Vundle chunk
set nocompatible				" required
filetype off					" required, turn on after Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'		" Required for Vundle
Plugin 'JuliaLang/julia-vim'	" Julia plugin
call vundle#end()
filetype plugin indent on		" turn filetype back on
" End Vundle chunk

" Make comment text font color lighter to read in the dark
:hi Comment ctermfg=6

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

"for tabs to be 2 (when editing people's stuff who use 2)
":set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" so enter enters a new line
:nnoremap <CR> o<Esc>

" Highlight search
" :nohlsearch to get rid of it
:set hlsearch

" GOING OVER 80 CHARACTERS?
" Stack Overflow solution: 
" Surrounds any 81st char and all followin chars whenever u get to 80+ chars
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Damian Conway solution:
" Just surrounds 81st char in magenta whenever you get to 80 chars or more.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Print line numbers if you print
set printoptions=number:y

" Make sure it recognizes .md files as markdown
au BufRead,BufNewFile *.md set filetype=markdown
