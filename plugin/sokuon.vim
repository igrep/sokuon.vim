"ひらがな・カタカナ・全角アルファベットによるコマンド入力を有効にする
noremap あ a
noremap い i
noremap う u
noremap え e
noremap お o
noremap ア a
noremap イ i
noremap ウ u
noremap エ e
noremap オ o

noremap <expr> ａ SokuonFire('a')
noremap <expr> ｂ SokuonFire('b')
noremap <expr> ｃ SokuonFire('c')
noremap <expr> ｄ SokuonFire('d')
noremap <expr> ｅ SokuonFire('e')
noremap <expr> ｆ SokuonFire('f')
noremap <expr> ｇ SokuonFire('g')
noremap <expr> ｈ SokuonFire('h')
noremap <expr> ｉ SokuonFire('i')
noremap <expr> ｊ SokuonFire('j')
noremap <expr> ｋ SokuonFire('k')
noremap <expr> ｌ SokuonFire('l')
noremap <expr> ｍ SokuonFire('m')
noremap <expr> ｎ SokuonFire('n')
noremap <expr> ｏ SokuonFire('o')
noremap <expr> ｐ SokuonFire('p')
noremap <expr> ｑ SokuonFire('q')
noremap <expr> ｒ SokuonFire('r')
noremap <expr> ｓ SokuonFire('s')
noremap <expr> ｔ SokuonFire('t')
noremap <expr> ｕ SokuonFire('u')
noremap <expr> ｖ SokuonFire('v')

noremap ｗ w

noremap <expr> ｘ SokuonFire('x')
noremap <expr> ｙ SokuonFire('y')
noremap <expr> ｚ SokuonFire('z')
noremap <expr> Ａ SokuonFire('A')
noremap <expr> Ｂ SokuonFire('B')
noremap <expr> Ｃ SokuonFire('C')
noremap <expr> Ｄ SokuonFire('D')
noremap <expr> Ｅ SokuonFire('E')
noremap <expr> Ｆ SokuonFire('F')
noremap <expr> Ｇ SokuonFire('G')
noremap <expr> Ｈ SokuonFire('H')
noremap <expr> Ｉ SokuonFire('I')
noremap <expr> Ｊ SokuonFire('J')
noremap <expr> Ｋ SokuonFire('K')
noremap <expr> Ｌ SokuonFire('L')
noremap <expr> Ｍ SokuonFire('M')
noremap <expr> Ｎ SokuonFire('N')
noremap <expr> Ｏ SokuonFire('O')
noremap <expr> Ｐ SokuonFire('P')
noremap <expr> Ｑ SokuonFire('Q')
noremap <expr> Ｒ SokuonFire('R')
noremap <expr> Ｓ SokuonFire('S')
noremap <expr> Ｔ SokuonFire('T')
noremap <expr> Ｕ SokuonFire('U')
noremap <expr> Ｖ SokuonFire('V')
noremap <expr> Ｗ SokuonFire('W')
noremap <expr> Ｘ SokuonFire('X')
noremap <expr> Ｙ SokuonFire('Y')
noremap <expr> Ｚ SokuonFire('Z')

function! SokuonInit() abort
  if !exists('b:sokuonCount')
    let b:sokuonCount = 0
  endif
endfunction

function! SokuonIncrease() abort
  call SokuonInit()
  let b:sokuonCount += 1
endfunction

noremap <expr> っ SokuonIncrease()

function! SokuonFire(key) abort
  call SokuonInit()
  try
    for i in range(b:sokuonCount)
      execute "normal " . a:key
    endfor
  finally
    let b:sokuonCount = 0
  endtry
endfunction
