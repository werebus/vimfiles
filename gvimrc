" Include user's local gvim before file
if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif

if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Command-Return for fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
endif

" Start without the toolbar
set guioptions-=T

" Include user's local gvim after file
if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif
