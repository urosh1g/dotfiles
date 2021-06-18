set autoindent
set smartindent
set cindent
set nu
set relativenumber
syntax enable
set ruler
set cmdheight=1
set noerrorbells
set encoding=utf8
set nobackup
set nowb
set noswapfile
set shiftwidth=4
set noshowmode
set tabstop=4
set wrap
set hlsearch
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
call plug#end()
colorscheme wal
