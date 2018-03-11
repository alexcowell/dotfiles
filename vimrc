" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"" Vundle config
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" DON'T FORGET TO RUN :PluginInstall AFTER CHANGING THIS!
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Asynchronous linting
Plugin 'w0rp/ale'

" Git
Plugin 'tpope/vim-fugitive'

" Change surrounding characters, tags etc. with, eg. cs"'
Plugin 'tpope/vim-surround'

" Custom text objects
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'michaeljsmith/vim-indent-object'

" Crystal support
Plugin 'rhysd/vim-crystal'

" JavaScript support
Plugin 'pangloss/vim-javascript'

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

" Enable the matchit plugin (shipped with Vim) for extended % matching
packadd! matchit

" Set the character encoding used for all text in Vim.
set encoding=utf-8

" Set the number of terminal colours.
set t_Co=256

" Colour scheme.
set background=light
colorscheme solarized

augroup vimrc
    " Remove all auto-commands for the current group.
    " This is to prevent strange things happening if this .vimrc is sourced
    " twice, because the auto-commands would be included twice.
    autocmd!

    " Use the default background colour for the sign column (left of the gutter).
    autocmd ColorScheme * highlight SignColumn ctermbg=7
augroup END

" Allow backspacing over indents, End-of-Lines, start of inserts,
" as you would expect.
set backspace=indent,eol,start

" Turn syntax highlighting on.
syntax on

" Show line numbers.
set number

" Show relative line numbers (useful for quickly seeing counts for motion).
" When used with `set number`, the current line number is also shown.
set relativenumber

" Show the current cursor position (row, column).
set ruler

" Don't display the Insert, Replace or Visual mode indicator as Airline puts
" this in the status bar.
set noshowmode

" Show the (partial) command being entered in the bottom-right of the window.
set showcmd

" Don't redraw while executing macros (helps performance).
set lazyredraw

" Ensure regular expressions work as expected (this would only ever be off
" if Vi compatability was needed).
set magic

" Highlight search results.
set hlsearch

" Cancel search result highlighting with <space>.
nnoremap <silent> <space> :nohlsearch<CR>

" When using '*' to search for current word, don't jump to the next match,
" keep the cursor where it is.
nnoremap * *``

" Incremental search.
set incsearch

" Searches are case insensitive.
set ignorecase

" Override case insensitive search when query contains an uppercase letter.
set smartcase

" Search down into subfolders.
" Provides tab-completion for all file-related tasks.
set path+=**

" Show a menu bar with possible matches when searching with wildcards.
set wildmenu

" Ignore files you probably don't want to be searching for.
set wildignore=*.o,*~,*.pyc,*.class
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

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

" Add a bit of margin to the left of the line numbers.
set foldcolumn=1

" Specify the amount of time (in milliseconds) to wait for a key code
" or mapped key sequence to complete.
set ttimeoutlen=10

" Put new windows below the current one when splitting vertically.
set splitbelow

" Put new windows to the right of the current one when splitting horizontally.
set splitright

"" Airline plugin settings

" Enable powerline fonts (requires a patched powerline font to be installed)
let g:airline_powerline_fonts=1

" Easier moving between split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


"" ALE plugin settings

" Slimmer and nicer-looking markers.
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

