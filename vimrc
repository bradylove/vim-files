set nocompatible
filetype off

" Vundle Config
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle Bundles
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'L9'
Bundle 'othree/vim-autocomplpop'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/tComment'
Bundle 'kana/vim-smartinput'
Bundle 'cohama/vim-smartinput-endwise'
Bundle 'nathanaelkane/vim-indent-guides'

" OmniComplete
set completeopt=longest,menuone

set hidden
set shell=/usr/bin/bash

" Wrap and scroll
set wrap
set scrolloff=3

" Backup settings
set nobackup
set nowritebackup
set directory=$HOME/.vim/tmp//,.

" Search
set hlsearch
set incsearch
set smartcase
set ffs=unix,dos,mac

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

set rnu

" Mappings
map , <C-w>
map \ <leader>
map <leader>\ :TComment<CR>

if &term == "screen"
  set t_Co=256
endif

" Indent Guides
" let g:indent_guides_start_level=2

" GO Config
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

" SmartInput-Endwise
call smartinput_endwise#define_default_rules()
