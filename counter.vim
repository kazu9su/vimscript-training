let s:count = 0

function! CountUp()
  let s:count += 1
endfunction

function! GetCount()
  return s:count
endfunction
