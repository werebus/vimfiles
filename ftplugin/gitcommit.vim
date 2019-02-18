" Don't remember last position for commit mesages (becuase each commit
" message is a different 'file').
if has("autocmd")
  au BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
endif
