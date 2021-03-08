" rummage.vim -- A grep interface
" 
" Maintainer: Andrew Haust <andrewwhhaust@gmail.com>
" Website:    https://github.com/sodapopcan/vim-rummage
" License:    Same terms as Vim itself (see :help license)
" Version:    0.1

if exists('g:loaded_rummage') || &cp
  finish
endif
let g:loaded_rummage = 1


command! -nargs=* -count=0 -bang -complete=custom,s:complete Rummage call rummage#rummage(<count>, <bang>0, <q-args>)

au! FileType qf au! CursorMoved <buffer> 
      \   if getqflist({"title":0}).title ==# "Rummage"
      \ |   let s:last_linenr = line('.')
      \ | endif
