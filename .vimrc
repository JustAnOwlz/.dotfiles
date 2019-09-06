set runtimepath+=~/.vim/plugged
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/sudo.vim'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
"Plug 'derekwyatt/vim-scala'
"Plug 'junegunn/goyo.vim', {'for': 'markdown'}
"Plug 'pangloss/vim-javascript'
"Plug 'wlangstroth/vim-racket'
"Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
"Plug 'shapeoflambda/dark-purple.vim'
call plug#end()

nmap <C-t> :NERDTreeToggle<cr>
nmap <C-left> <C-w><left>
nmap <C-up> <C-w><up>
nmap <C-down> <C-w><down>
nmap <C-right> <C-w><right>

"let g:clang_library_path='/usr/lib64/libclang.so.8'


syntax enable 

highlight ColorColumn ctermbg=darkgray
set colorcolumn=110

set number 
set relativenumber
set ruler

set smarttab
set smartindent
set smartcase
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

set showbreak=--
set encoding=UTF-8
set clipboard=unnamed,unnamedplus

