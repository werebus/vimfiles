" Start without the toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L

call simple_guifont#Set(['Inconsolata', 'Liberation Mono', 'DejaVu Sans Mono'], 'Consolas', 14)

" Include user's local gvimrc file
if filereadable(expand("$HOME/.gvimrc.local"))
  source $HOME/.gvimrc.local
endif
