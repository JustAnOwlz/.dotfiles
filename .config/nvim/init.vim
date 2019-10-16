call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/goyo.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

nmap <C-t> :NERDTreeToggle<cr>
nmap <C-left> <C-w><left>
nmap <C-up> <C-w><up>
nmap <C-down> <C-w><down>
nmap <C-right> <C-w><right>

syntax enable
set number
set relativenumber
set ruler

set encoding=UTF-8

set clipboard=unnamed,unnamedplus

au BufRead,BufNewFile *.txt,*.tex, *md set wrap linebreak nolist textwidth=0 wrapmargin=0
