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
"" こういうRubyで出した: ('a'..'z').each {|c| puts "noremap #{(c.ord + 65248).chr(Encoding::UTF_8)} #{c}" }
noremap ａ a
noremap ｂ b
noremap ｃ c
noremap ｄ d
noremap ｅ e
noremap ｆ f
noremap ｇ g
noremap ｈ h
noremap ｉ i
noremap ｊ j
noremap ｋ k
noremap ｌ l
noremap ｍ m
noremap ｎ n
noremap ｏ o
noremap ｐ p
noremap ｑ q
noremap ｒ r
noremap ｓ s
noremap ｔ t
noremap ｕ u
noremap ｖ v
noremap ｗ w
noremap ｘ x
noremap ｙ y
noremap ｚ z

noremap Ａ A
noremap Ｂ B
noremap Ｃ C
noremap Ｄ D
noremap Ｅ E
noremap Ｆ F
noremap Ｇ G
noremap Ｈ H
noremap Ｉ I
noremap Ｊ J
noremap Ｋ K
noremap Ｌ L
noremap Ｍ M
noremap Ｎ N
noremap Ｏ O
noremap Ｐ P
noremap Ｑ Q
noremap Ｒ R
noremap Ｓ S
noremap Ｔ T
noremap Ｕ U
noremap Ｖ V
noremap Ｗ W
noremap Ｘ X
noremap Ｙ Y
noremap Ｚ Z

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
      echomsg "normal " . a:key
    endfor
  finally
    let b:sokuonCount = 0
  endtry
endfunction
