" Include user's local vim before file
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" Source Pathogen
runtime pathogen/autoload/pathogen.vim
call pathogen#infect('bundle-colors')
call pathogen#infect('bundle-langs')
call pathogen#infect('bundle-tools')
call pathogen#infect('~/.bundle')


" Include user's local vim after file
if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
