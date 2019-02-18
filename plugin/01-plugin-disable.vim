"Borrowed from the Janus project, pre-disables various plugins that have
"external dependancies.
if !exists('g:pathogen_blacklist')
  let g:pathogen_blacklist = []
end

" Plugins that requires python support
if !has("python")
  call add(g:pathogen_blacklist, "gundo")
  call add(g:pathogen_blacklist, "ultisnips")
endif

" Ack requires ack command
if !executable("ack")
  call add(g:pathogen_blacklist, "ack")
endif
