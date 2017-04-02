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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'davejlong/cf-utils.vim'
Plug 'junegunn/fzf'
Plug 'fatih/vim-go'
Plug 'editorconfig/editorconfig-vim'
Plug 'neomake/neomake'
Plug 'jaawerth/nrun.vim'
Plug 'stephpy/vim-yaml'
Plug 'airblade/vim-rooter'

call plug#end()

filetype plugin indent on    " required
" END Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-rooter config
" Dont override autochdir
let g:rooter_manual_only = 1
function! Reflex (file)
  let rootdir = FindRootDirectory()
  let dotreflex = rootdir.'/.reflex'
  if filereadable(dotreflex)
    let cmd = ('echo $(date)-'.a:file.' > '.dotreflex)
    call system(cmd)
  endif
endfunction
" Put this command _after_ any Neomake listeners
" autocmd! BufWritePost * call Reflex(expand('%:p'))



" vim-easy-align mapping
"" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

"" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" editorconfig plugin config
" https://github.com/editorconfig/editorconfig-vim#recommended-options
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'

" nrun config
" https://github.com/jaawerth/nrun.vim#with-neovim--neomake
" you can set your enabled makers globally (like below) or on the buffer level as part of an autocmd - see Neomake docs for details
let g:neomake_javascript_enabled_makers = ['standard']
" let g:neomake_javascript_enabled_makers = ['eslint', 'standard']
let g:neomake_error_sign = {'text': '❌', 'texthl': 'NeomakeErrorSign' }
let g:neomake_warning_sign = {'text': '⚠️', 'texthl': 'NeomakeWarningSign' }

" neomake config
" when switching/opening a JS buffer, set neomake's eslint path, and enable it as a maker
au BufEnter *.js let b:neomake_javascript_eslint_exe = nrun#Which('eslint')
au BufEnter *.jsx let b:neomake_javascript_eslint_exe = nrun#Which('eslint')
au BufEnter *.js let b:neomake_javascript_standard_exe = nrun#Which('standard')
au BufEnter *.jsx let b:neomake_javascript_standard_exe = nrun#Which('standard')
autocmd! BufEnter,BufWritePost * Neomake


"autocmd! BufWritePost * call Reflex(expand('%:p'))


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

"" buffers...be careful turning this on...
set nohidden 

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
set matchtime=5  " how long to show matching parens (10th of a sec)
set ruler
set smartcase 
set shiftround    " for things like > to move all the selected items
set shiftwidth=2
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
