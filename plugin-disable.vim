"Borrowed from the Janus project, pre-disables various plugins that have
"external dependancies.

" Plugins that requires python support
if !has("python")
  call add(g:pathogen_disabled, "gundo")
endif

" Ack requires ack command
if !executable("ack")
  call add(g:pathogen_disabled, "ack")
endif

" Gist-vim requires curl
if !executable("curl")
  call add(g:pathogen_disabled, "gist")
endif

" Tagbar requires ctags
if !executable("ctags")
  call add(g:pathogen_disabled, "tagbar")
endif

" nodejs does not protect itself
" See Janus#336
if exists("*DetectNode")
  call add(g:pathogen_disabled, "nodejs")
endif
