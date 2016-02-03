"Borrowed from the Janus project, pre-disables various plugins that have
"external dependancies.
let g:pathogen_disabled = []

" Plugins that requires python support
if !has("python")
  call add(g:pathogen_disabled, "gundo")
  call add(g:pathogen_disabled, "ultisnips")
endif

" Ack requires ack command
if !executable("ack")
  call add(g:pathogen_disabled, "ack")
endif
