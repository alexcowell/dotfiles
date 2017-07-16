" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"" Vundle config
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"" end Vundle config

" Set the character encoding used for all text in Vim.
set encoding=utf-8

" Set the number of terminal colours.
set t_Co=256

" Colour scheme.
set background=light
colorscheme solarized

" Allow backspacing over indents, End-of-Lines, start of inserts,
" as you would expect.
set backspace=indent,eol,start

" Turn syntax highlighting on.
syntax on

" Show line numbers.
set number

" Show the current cursor position (row, column).
set ruler

" Don't redraw while executing macros (helps performance).
set lazyredraw

" Ensure regular expressions work as expected (this would only ever be off
" if Vi compatability was needed).
set magic

" Highlight search results.
set hlsearch

" Incremental search.
set incsearch

" Searches are case insensitive.
set ignorecase

" Override case insensitive search when query contains an uppercase letter.
set smartcase

" Allow hidden buffers, don't limit to 1 file per window/split
" (comes from old-ass needs of Vi users).
set hidden

" Remember more command history.
set history=100

" Visual indicator of how long lines are getting.
set colorcolumn=80

" Number of spaces that a <Tab> counts for.
set tabstop=4

" Number of spaces to use for each step of auto-indentation.
set shiftwidth=4

" Spaces not tabs.
set expandtab

" Smart auto-indenting when starting a new line.
" E.g., indent when starting a new line after a '{'.
set smartindent

" Keep indent level from previous line.
" If nothing is typed after the indent, it will be removed.
set autoindent

" Don't wrap lines.
set nowrap

" Don't keep backups when overwriting files. I trust myself. And git.
set nobackup
set nowritebackup

" Don't use swapfiles (*.swp) for the buffers. They just create clutter and
" everything is in git anyway.
set noswapfile

" Prefer unix end-of-line formats.
set fileformats=unix,mac,dos

