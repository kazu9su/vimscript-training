nnoremap R :call <SID>ReverseCurrLine()<CR>

function! s:ReverseString(str)
    return join(reverse(split(a:str, '\zs')), '')
endfunction

function! s:ReverseCurrLine()
    let lnum = line('.')
    call setline(lnum, s:ReverseString(getline(lnum)))
endfunction
