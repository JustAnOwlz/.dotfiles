set runtimepath+=~/.vim/plugged
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim', {'for': 'markdown'}
Plug 'pangloss/vim-javascript'
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }
call plug#end()

nmap <C-t> :NERDTreeToggle<cr>
nmap <C-left> <C-w><left>
nmap <C-up> <C-w><up>
nmap <C-down> <C-w><down>
nmap <C-right> <C-w><right>

syntax enable 
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set ft=markdown

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

if has("autocmd")
  augroup haskell
    autocmd BufRead,BufNewFile *.hs set expandtab
    autocmd BufRead,BufNewFile *.hs set tabstop=2
    autocmd BufRead,BufNewFile *.hs set shiftwidth=2
    autocmd BufRead,BufNewFile *.hs set autoindent
    autocmd BufRead,BufNewFile *.hs set smartindent
  augroup END
endif

