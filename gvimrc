" Start without the toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L

set guifont=Inconsolata\ Medium\ 20

" Include user's local gvimrc file
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
