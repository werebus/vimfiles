" Include user's local gvim before file
if filereadable(expand("~/.gvimrc.before"))
  source ~/.gvimrc.before
endif



" Include user's local gvim after file
if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif
