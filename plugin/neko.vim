" neko.vim - You will be healed in a Neko.
" Author:  rtakasuke
" Version: 1.0 or Vim 7.0
"
" DESCRIPTION:
"  This plugin display cute cats.
"  If :Neko, display a cute animals ASCII Art.

if v:version < 700 || (exists('g:loaded_neko') && g:loaded_neko)
  finish
endif
let g:loaded_neko = 1
let s:save_cpo = &cpo
set cpo&vim


command! -nargs=0 Neko call neko#Neko()


let &cpo = s:save_cpo
unlet s:save_cpo
