" Source Pathogen
runtime pathogen/autoload/pathogen.vim
execute pathogen#infect('bundle-colors/{}')
execute pathogen#infect('bundle-langs/{}')
execute pathogen#infect('bundle-tools/{}')
execute pathogen#infect('~/.bundle/{}')
Helptags
" For sessions to work with pathogen
set sessionoptions-=options

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
set backup
set backupdir=~/.vim/backup
set viewdir=~/.vim/views
set directory=~/.vim/swap
set undofile
set undodir=~/.vim/undo
set viminfofile=~/.vim/info

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*

" Show linenumbers on printouts; use letter paper (not A4)
set printoptions=number:y,paper:letter

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Default color scheme
color jellybeans+

" Include user's local vimrc file
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
