"ひらがな・カタカナ・全角アルファベットによるコマンド入力を有効にする
map あ a
map い i
map う u
map え e
map お o
map ア a
map イ i
map ウ u
map エ e
map オ o

map <expr> ａ SokuonFire('a')
map <expr> ｂ SokuonFire('b')
map <expr> ｃ SokuonFire('c')
map <expr> ｄ SokuonFire('d')
map <expr> ｅ SokuonFire('e')
map <expr> ｆ SokuonFire('f')
map <expr> ｇ SokuonFire('g')
map <expr> ｈ SokuonFire('h')
map <expr> ｉ SokuonFire('i')
map <expr> ｊ SokuonFire('j')
map <expr> ｋ SokuonFire('k')
map <expr> ｌ SokuonFire('l')
map <expr> ｍ SokuonFire('m')
map <expr> ｎ SokuonFire('n')
map <expr> ｏ SokuonFire('o')
map <expr> ｐ SokuonFire('p')
map <expr> ｑ SokuonFire('q')
map <expr> ｒ SokuonFire('r')
map <expr> ｓ SokuonFire('s')
map <expr> ｔ SokuonFire('t')
map <expr> ｕ SokuonFire('u')
map <expr> ｖ SokuonFire('v')

map ｗ w

map <expr> ｘ SokuonFire('x')
map <expr> ｙ SokuonFire('y')
map <expr> ｚ SokuonFire('z')
map <expr> Ａ SokuonFire('A')
map <expr> Ｂ SokuonFire('B')
map <expr> Ｃ SokuonFire('C')
map <expr> Ｄ SokuonFire('D')
map <expr> Ｅ SokuonFire('E')
map <expr> Ｆ SokuonFire('F')
map <expr> Ｇ SokuonFire('G')
map <expr> Ｈ SokuonFire('H')
map <expr> Ｉ SokuonFire('I')
map <expr> Ｊ SokuonFire('J')
map <expr> Ｋ SokuonFire('K')
map <expr> Ｌ SokuonFire('L')
map <expr> Ｍ SokuonFire('M')
map <expr> Ｎ SokuonFire('N')
map <expr> Ｏ SokuonFire('O')
map <expr> Ｐ SokuonFire('P')
map <expr> Ｑ SokuonFire('Q')
map <expr> Ｒ SokuonFire('R')
map <expr> Ｓ SokuonFire('S')
map <expr> Ｔ SokuonFire('T')
map <expr> Ｕ SokuonFire('U')
map <expr> Ｖ SokuonFire('V')
map <expr> Ｗ SokuonFire('W')
map <expr> Ｘ SokuonFire('X')
map <expr> Ｙ SokuonFire('Y')
map <expr> Ｚ SokuonFire('Z')

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
