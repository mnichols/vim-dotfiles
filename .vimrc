set nocompatible    " be iMproved, required
set clipboard+=unnamedplus

syntax enable
set title

" No Backups

set nobackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug: https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')


"" All the bundles you likey
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/es.next.syntax.vim'
Plug 'elzr/vim-json'
Plug 'heavenshell/vim-jsdoc'

call plug#end()

filetype plugin indent on    " required
" END Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors

colorscheme kolor

"" Highlight current line
" Enable CursorLine
set cursorline

" Default Colors for CursorLine
" keep this in sync with InsertLeave autocmd below

" highlight CursorLine ctermfg=LightGray ctermbg=Black cterm=bold guifg=white guibg=black gui=bold
highlight LineNr ctermfg=LightBlue ctermbg=Black  
highlight CursorLineNr ctermfg=Yellow ctermbg=Black cterm=bold guifg=yellow guibg=black gui=bold

" Change Color when entering Insert Mode
" autocmd InsertEnter * highlight  CursorLine ctermbg=White ctermfg=Black cterm=bold guifg=black guibg=white gui=bold

" Revert Color to default when leaving Insert Mode (see config for CursorLine highlight above)
" autocmd InsertLeave * highlight  CursorLine ctermfg=White ctermbg=Black cterm=bold guifg=white guibg=black gui=bold

" Behaviors

"" buffers
set hidden 

"" File
set autochdir                   " always have pwd as current file

let g:netrw_banner=0            " you dont need the banner in netrw
" let g:netrw_browse_split = 1    " open files in horizontal split
" let g:netrw_winsize = 50        " 25% of window

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
set numberwidth=6
set relativenumber

"" Text wrapping

set nowrap
set linebreak
set textwidth=0
set wrapmargin=0

" Key Mappings

" Get me out of here please key
inoremap <c-c> <esc>

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
