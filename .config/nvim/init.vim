" Todo: 
" - change selection color for tender.vim
" - start using fugitive
" - fix the paranthesis
" - start using vim-surround:
"     c(change)s(surround)"(old)'(new)
"     ys(create surround)iw(entire word)](surround symbol)

set backupdir=~/.config/nvim/backup

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'

" Generic functionalities
Plug 'scrooloose/nerdtree',          {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin',  {'on': 'NERDTreeToggle'}
Plug 'mbbill/undotree',              {'on': 'UndotreeToggle'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

" Lang specific functionalities
Plug 'kien/rainbow_parentheses.vim', {'for': ['racket', 'scheme']}
Plug 'junegunn/goyo.vim',            {'for': 'markdown'}
Plug 'wlangstroth/vim-racket'

Plug 'neoclide/coc.nvim',            {'branch': 'release'}
call plug#end()

" Simple plugin specific conf
let g:lightline = { 'colorscheme': 'tender' }
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:undotree_SetFocusWhenToggle = 1

" Appereance conf
set termguicolors
colorscheme tender
syntax enable

" Behavior conf
set number relativenumber
set noshowmode

" Keybindings
nmap <C-t> :NERDTreeToggle<cr>
nmap <C-u> :UndotreeToggle<cr>


augroup rainbow
  autocmd!
  au FileType scheme,racket,clojure RainbowParenthesesActivate
  au FileType scheme,racket,clojure RainbowParenthesesLoadRound
  au FileType scheme,racket,clojure RainbowParenthesesLoadSquare
  au FileType scheme,racket,clojure RainbowParenthesesLoadBraces
augroup END

" RainbowParantheses enablers
" au VimEnter * RainbowParenthesesActivate
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" Mouse gs
vmap <C-x> "+d
vmap <C-c> "+y
imap <C-v> "+p
set mouse=a                                         " mouse support

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

source $HOME/.config/nvim/coc-keybindings.vim
