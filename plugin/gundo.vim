if has('python3')
  let g:gundo_prefer_python3 = 1
  packadd gundo
  map <Leader>u :GundoToggle<CR>
endif
