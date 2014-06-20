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

" Make comment text font color lighter to read in the dark
:hi Comment ctermfg=6

" Highlight search
" :nohlsearch to get rid of it
:set hlsearch
