function! Factorial(num)
  return a:num > 1 ? a:num * Factorial(a:num - 1) : 1
endfunction

function! ShowFour()
  echo '1st'
  echo '2nd'
  echo '3rd'
  echo '4th'
endfunction

function! LengthVec3D(x, y, z)
  let l2 = a:x * a:x + a:y * a:y + a:z * a:z
  return sqrt(l2)
endfunction

function! Average(...)
  let total = 0.0
  for item in a:000
    let total += item
  endfor
  return total / a:0
endfunction

function! WithoutRange() range
  echo a:firstline a:lastline
endfunction

function! WithoutAbort() abort
  let v = undefined_variable
  echo "OMG (not aborted)"
endfunction

function! s:world()
  return 'World'
endfunction

function! Hello()
  return 'Hello ' . s:world()
endfunction

function! Fibonacci(num)
  if a:num == 0
    return 0
  elseif a:num == 1
    return 1
  else
    return Fibonacci(a:num - 1) + Fibonacci(a:num - 2)
  endif
endfunction

function! Fizz(num)
  if a:num % 3 == 0
    return 'Fizz'
  else
    return a:num
  endif
endfunction

function! FizzBuzz(num)
  if a:num % 15 == 0
    return 'FizzBuzz'
  elseif a:num % 5 == 0
    return 'Buzz'
  elseif a:num % 3 == 0
    return 'Fizz'
  else
    return a:num
  endif
endfunction

let i = 1
while i <= 15
  echo FizzBuzz(i)
  let i += 1
endwhile

for i in range(1, 15)
  echo FizzBuzz(i)
endfor

function! Assert1to10(num)
  if a:num < 1 || a:num > 10
    throw 'Out of range: ' . a:num
  end
endfunction

function! Guess()
  try
    call Assert1to10(input('Guess a number:'))
    echo "\nYou are right!"
  catch /^Out of range: .*/
    echo "\nSomething bad..."
  finally
    echo 'Thank you for playing'
  endtry
endfunction

function! Length() dict
  return sqrt(self.x * self.x + self.y * self.y)
endfunction

function! NewVec2D(x, y)
  return {'x': a:x, 'y': a:y, 'len': function("Length")}
endfunction

let g:vec2d = {'x': 0, 'y': 0}

function! g:vec2d.len() dict
  return sqrt(self.x * self.x + self.y * self.y)
endfunction

function! NewVec2S(x, y)
  let self = copy(g:vec2d)
  let self.x = a:x
  let self.y = a:y
  return self
endfunction
