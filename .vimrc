set nocompatible    " be iMproved, required
filetype off        " required...see end of Vundle init

syntax enable
set title

" No Backups

set nobackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle init
"" Install Plugins:

"" Launch vim and run :PluginInstall
"" To install from command line: vim +PluginInstall +qall

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add an UnBundle command {
    function! UnBundle(arg, ...)
      let bundle = vundle#config#init_bundle(a:arg, a:000)
      call filter(g:vundle#bundles, 'v:val["name_spec"] != "' . a:arg . '"')
    endfunction

    com! -nargs=+         UnBundle
    \ call UnBundle(<args>)
" }

"" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" All the bundles you likey
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/es.next.syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'heavenshell/vim-jsdoc'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" END VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors

colorscheme kolor

"" Highlight current line
" Enable CursorLine
set cursorline

" Default Colors for CursorLine
highlight  CursorLine ctermbg=Yellow ctermfg=None

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=Green ctermfg=Red

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=Yellow ctermfg=None


" Behaviors

"" buffers
set hidden 

"" File
set autochdir                   " always have pwd as current file

let g:netrw_banner=0            " you dont need the banner in netrw
let g:netrw_browse_split = 1    " open files in horizontal split
let g:netrw_winsize = 50        " 25% of window

"" General
set autoindent
set backspace=indent,eol,start
set copyindent
set expandtab     " spaces, not tabs
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set ignorecase    " ignore case when searching
set matchtime=10  " how long to show matching parens (10th of a sec)
set smartcase "
set shiftround    " for things like > to move all the selected items
set shiftwidth=4
set showmatch 
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set tabstop=4

" History

set history=1000        " remember more commands
set undolevels=1000     " lotsa undo
set wildignore=*.swp,*.bak,*.pyc,*.class

" Sounds

set noerrorbells        " shhhh
set visualbell          " shhhh

" Presentation

"" Line numbers

set number
set numberwidth=4
set relativenumber

"" Text wrapping

set nowrap
set linebreak


" Key Mappings


"" Map leader

let mapleader = ","
let maplocalleader = ","

"" Line ops

" move line down
nmap - ddp

" move line up
nmap _ ddkP      

" delete line in insert mode (and stay insert mode)
imap <c-d> <esc>ddi

" uppercase the things, leave cursor at end
imap <c-u> <esc>gUiwea

nmap <c-u> g~iwe


