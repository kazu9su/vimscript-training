function! Length(x, y)
  let z = a:x * a:x + a:y * a:y
  return sqrt(z)
endfunction

function! GetZ()
  return z
endfunction

function! CountItems(array)
  let l:count = len(a:array)
  return l:count
endfunction
