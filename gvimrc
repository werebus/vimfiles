if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
endif

" Start without the toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Pretty font
if has("gui_macvim")
  set guifont=Inconsolata:h14
else
  set guifont=Inconsolata\ Medium\ 20
endif

" Include user's local gvimrc file
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
