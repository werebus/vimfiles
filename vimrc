" Include user's local vim before file
let g:pathogen_disabled = []
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" Source Pathogen
runtime pathogen/autoload/pathogen.vim
runtime plugin-disable.vim
call pathogen#infect('bundle-colors/{}')
call pathogen#infect('bundle-langs/{}')
call pathogen#infect('bundle-tools/{}')
call pathogen#infect('~/.bundle/{}')
Helptags

set nocompatible

" Yank to the end of the line (consistent with C and D)
nnoremap Y y$
" Clear highlighted search
nmap <silent> <leader>/ :nohlsearch<CR>

set number
syntax on
set cursorline
set showmatch

set encoding=utf-8

" Ruler and statusline
if has('cmdline_info')
  set ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
  set showcmd
endif
if has('statusline')
  set laststatus=2
  set statusline=%<%f\ 
  set statusline+=%w%h%m%r
  set statusline+=%{fugitive#statusline()}
  set statusline+=\ [%{&ff}/%Y]
  set statusline+=\ [%{getcwd()}]
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif

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

" Backups and swaps
set backup
set undofile
" Setup directories for swapfiles, backups, etc.
function! InitializeDirectories()
  let separator = "."
  let parent = $HOME
  let prefix = '.vim'
  let dir_list = {
                    \ 'backup': 'backupdir',
                    \ 'views': 'viewdir',
                    \ 'swap': 'directory',
                    \ 'undo': 'undodir' }

  for [dirname, settingname] in items(dir_list)
    let directory = parent . '/' . prefix . dirname . "/"
    if exists("*mkdir")
      if !isdirectory(directory)
        call mkdir(directory)
      endif
    endif
    if !isdirectory(directory)
      echo "Warning: Unable to create backup directory: " . directory
      echo "Try: mkdir -p " . directory
    else
      let directory = substitute(directory, " ", "\\\\ ", "")
      exec "set " . settingname . "=" . directory
    endif
  endfor
endfunction
call InitializeDirectories()

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*

" ZoomWin config
map <Leader><Leader> :ZoomWin<CR>

" Buffergator
map <Leader>b :BufferGatorToggle<CR>

" Gundo
map <Leader>u :GundoToggle<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" make uses real tabs
au FileType make                                     set noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python  set tabstop=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Leader-F for Ack
map <Leader>f :Ack<space>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Use modeline overrides
set modeline
set modelines=10

" Default color scheme
color jellybeans+

" Include user's local vim after file
if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
