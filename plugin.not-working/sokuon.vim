map ： :
map ＊ *
map ！ !
map ＋ +
map ＜ <
map ＞ >
map ” "

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

map ａ :<C-u>call SokuonFire('a')<CR>
map ｂ :<C-u>call SokuonFire('b')<CR>
map ｃ :<C-u>call SokuonFire('c')<CR>
map ｄ :<C-u>call SokuonFire('d')<CR>
map ｅ :<C-u>call SokuonFire('e')<CR>
map ｆ :<C-u>call SokuonFire('f')<CR>
map ｇ :<C-u>call SokuonFire('g')<CR>
map ｈ :<C-u>call SokuonFire('h')<CR>
map ｉ :<C-u>call SokuonFire('i')<CR>
map ｊ :<C-u>call SokuonFire('j')<CR>
map ｋ :<C-u>call SokuonFire('k')<CR>
map ｌ :<C-u>call SokuonFire('l')<CR>
map ｍ :<C-u>call SokuonFire('m')<CR>
map ｎ :<C-u>call SokuonFire('n')<CR>
map ｏ :<C-u>call SokuonFire('o')<CR>
map ｐ :<C-u>call SokuonFire('p')<CR>
map ｑ :<C-u>call SokuonFire('q')<CR>
map ｒ :<C-u>call SokuonFire('r')<CR>
map ｓ :<C-u>call SokuonFire('s')<CR>
map ｔ :<C-u>call SokuonFire('t')<CR>
map ｕ :<C-u>call SokuonFire('u')<CR>
map ｖ :<C-u>call SokuonFire('v')<CR>

map ｗ w

map ｘ :<C-u>call SokuonFire('x')<CR>
map ｙ :<C-u>call SokuonFire('y')<CR>
map ｚ :<C-u>call SokuonFire('z')<CR>
map Ａ :<C-u>call SokuonFire('A')<CR>
map Ｂ :<C-u>call SokuonFire('B')<CR>
map Ｃ :<C-u>call SokuonFire('C')<CR>
map Ｄ :<C-u>call SokuonFire('D')<CR>
map Ｅ :<C-u>call SokuonFire('E')<CR>
map Ｆ :<C-u>call SokuonFire('F')<CR>
map Ｇ :<C-u>call SokuonFire('G')<CR>
map Ｈ :<C-u>call SokuonFire('H')<CR>
map Ｉ :<C-u>call SokuonFire('I')<CR>
map Ｊ :<C-u>call SokuonFire('J')<CR>
map Ｋ :<C-u>call SokuonFire('K')<CR>
map Ｌ :<C-u>call SokuonFire('L')<CR>
map Ｍ :<C-u>call SokuonFire('M')<CR>
map Ｎ :<C-u>call SokuonFire('N')<CR>
map Ｏ :<C-u>call SokuonFire('O')<CR>
map Ｐ :<C-u>call SokuonFire('P')<CR>
map Ｑ :<C-u>call SokuonFire('Q')<CR>
map Ｒ :<C-u>call SokuonFire('R')<CR>
map Ｓ :<C-u>call SokuonFire('S')<CR>
map Ｔ :<C-u>call SokuonFire('T')<CR>
map Ｕ :<C-u>call SokuonFire('U')<CR>
map Ｖ :<C-u>call SokuonFire('V')<CR>
map Ｗ :<C-u>call SokuonFire('W')<CR>
map Ｘ :<C-u>call SokuonFire('X')<CR>
map Ｙ :<C-u>call SokuonFire('Y')<CR>
map Ｚ :<C-u>call SokuonFire('Z')<CR>

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
    for i in range(b:sokuonCount + 1)
      execute "normal " . a:key
    endfor
  finally
    let b:sokuonCount = 0
  endtry
endfunction
