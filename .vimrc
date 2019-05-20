set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'derekwyatt/vim-scala'
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ


set number relativenumber
set ruler
set cursorline
set encoding=UTF-8

set clipboard=unnamed,unnamedplus

syntax on
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
