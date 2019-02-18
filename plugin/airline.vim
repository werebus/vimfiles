if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if has("gui_running")
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.crypt = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''
else
  if has('multi_byte')
    let g:airline_left_sep = '▶'
    let g:airline_left_alt_sep = '»'
    let g:airline_right_sep = '◀'
    let g:airline_right_alt_sep = '«'
    let g:airline_symbols.branch = 'ߌ'
    let g:airline_symbols.crypt = '≸'
  else
    let g:airline_left_sep = '>'
    let g:airline_left_alt_sep = '>'
    let g:airline_right_sep = '<'
    let g:airline_right_alt_sep = '<'
    let g:airline_symbols.branch = 'Y'
    let g:airline_symbols.crypt = '[x]'
  endif
  let g:airline_symbols.readonly = 'RO'
  let g:airline_symbols.linenr = '-'
  let g:airline_symbols.maxlinenr = ''
endif

let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme='bubblegum'
