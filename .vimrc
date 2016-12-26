" VIM Configuration File
" Description:  Primarily optimized for C/C++ development and my personal preferences.
" Author:  Clark Zinzow
" Acknowledgements:  Gerhard Gappmeier, 

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" true color support
" set termguicolors
" use intelligent indentation for C
set smartindent
set tabstop=2 shiftwidth=2
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
" wrap lines at 120 chars. 80 is somewaht antiquated with modern displays.
set textwidth=100
set number
set mouse=a

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

inoremap jk <ESC>
:vmap // :s:^://<CR>
" nnoremap <c-j> <c-w>j
" nnoremap <c-k> <c-w>k
" nnoremap <c-h> <c-w>h
" nnoremap <c-l> <c-w>l


filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
Plug 'vim-syntastic/syntastic'
" Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
" Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'nacitar/a.vim'
Plug 'majutsushi/tagbar'
Plug 'wincent/command-t'
Plug 'Shougo/unite.vim'
Plug 'aperezdc/vim-template'
" Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'suan/vim-instant-markdown', {'rtp': 'after'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'lervag/vimtex'
call plug#end()

set t_Co=256

colorscheme solarized

set background=dark

let g:user='Clark Zinzow'
let g:email='clarkzinzow@gmail.com'
let vim_markdown_preview_github=1
