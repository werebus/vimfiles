set nocompatible
set backspace=indent,eol,start
set encoding=utf-8
set number
set cursorline
set showmatch
filetype plugin indent on
syntax on

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list
if has('multi_byte')
  set listchars=tab:\ \ ,trail:·,extends:→
else
  set listchars=tab:\ \ ,trail:.,extends:>
endif

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Temp files
let $VIMHOME=expand('<sfile>:p:h')
set backup
set backupdir=$VIMHOME/backup
set viewdir=$VIMHOME/views
set directory=$VIMHOME/swap
set undofile
set undodir=$VIMHOME/undo
set viminfofile=$VIMHOME/info

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*
set tags^=./.git/tags

" Show linenumbers on printouts; use letter paper (not A4)
set printoptions=number:y,paper:letter

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Default color scheme
packadd! Colour-Sampler-Pack
color jellybeans+

" Include user's local vimrc file
if filereadable(expand("$HOME/.vimrc.local"))
  source $HOME/.vimrc.local
endif
