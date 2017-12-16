function! GotoWin(name)
    let nr = bufwinnr(a:name)
    if nr > 0
        execute nr . 'wincmd w'
    endif
    return nr
endfunction
