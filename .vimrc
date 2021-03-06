set nocompatible              " be iMproved, required

set history=1000
set expandtab "Turn tabs into spaces
set tabstop=2 "Tab = 2 spaces in normal mode
autocmd BufRead,BufNewFile ~/Documents/Development/Code/knome/kgap/trunk/product/ksoft-webapp/src/main/webapp/* setlocal tabstop=4 noexpandtab shiftwidth=4 softtabstop=4
syntax on
set backspace=indent,eol,start
set shiftwidth=2
set softtabstop=2 "Tab = 2 spaces in insert mode
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
" Make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" Highlight current line
set cursorline
set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set winwidth=79
set shell=bash
" Prevent vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" Keep more context when scrolling off the end of a buffer
set scrolloff=3
" Display incomplete command
set showcmd
" Display the line number and column number
set ruler
" Show line number in the left side
" set number

" GiaNU: There is a problem if don't turn off first the filetype. FIX!!
filetype off

" Left padding
set foldcolumn=1 

" Se the prefered encoding of the files
set fileencoding=utf-8
set fileencodings=utf-8
set encoding=utf-8
set lazyredraw

let mapleader=","

" Split
set splitbelow
set splitright

" ------------------------------------------
"           VUNDLER AND PLUGINS
" ------------------------------------------

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'bling/vim-airline'
Bundle 'dkprice/vim-easygrep'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'scrooloose/nerdtree.git'
Bundle "nelstrom/vim-visual-star-search"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPS AND CONFIGURATION TO JUMP TO SPECIFIC COMMAND-T TARGETS AND FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  
  " bind \ (backward slash) to grep shortcut
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
  nnoremap \ :Ag<SPACE>
  " bind K to grep word under cursor
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif



"use the silver searcher (brews install the_silver_searcher)
let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore vendor/bundle -g ""'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_by_filename = 1
let g:ctrlp_open_new_file = 'v'

map <leader>cc :CtrlPClearCache<cr>
map <leader>f :CtrlP<cr>
map <leader>F :CtrlP %%<cr>
map <leader>gt :CtrlPTag<cr>

map <leader>ne :NERDTree<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set t_Co=256
" syntax enable
:set background=dark
" colorscheme Tomorrow-Night-Bright
colorscheme Tomorrow-Night


