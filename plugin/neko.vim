" neko.vim - You will be healed in a Neko.
" Author:  rtakasuke
" Version: 1.0 or Vim 7.0
"
" DESCRIPTION:
"  This plugin display cute cats.
"  If :call Neko(), display a cat.
"
" ==================== file neko.vimrc ====================
" map <silent> neko :call Neko()<CR>
" ==================== end: neko.vimrc ====================

if v:version < 700 || (exists('g:loaded_neko') && g:loaded_neko)
  finish
endif
let g:loaded_neko = 1
let s:save_cpo = &cpo
set cpo&vim


function! Neko()
    let l:filesStr   = glob("./import/*.neko")
    let l:fileList   = split(filesStr, "\n")
    let l:fileLen    = len(fileList)
    let l:randNum    = call('GetRandomNumber', [fileLen])
    let l:targetFile = fileList[randNum]
    for line in readfile(targetFile)
        echo line
    endfor
endfunction

function! GetRandomNumber(fileNum)
    let l:matchEnd = matchend(reltimestr(reltime()), '\d\+\.') + 1
    let l:rand     = reltimestr(reltime())[l:matchEnd : ] % (a:fileNum)
    return rand
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
