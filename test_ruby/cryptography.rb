# 入力された暗号を解読した結果を1行で出力してください。
#  置換は英字 a, b, ..., z の i 文字目 (1 ≦ i ≦ 26) を T の i 文字目に置き換える形で行います。

input = gets.chomp.split(' ')
# 置換回数（0 ≦ num ≦ 100）
num = input[0].to_i
# 小文字アルファベットの置換を表す文字列 -> 配列へ
cryptography_key = input[1].split('')
# 置換された文字列 -> 配列へ
cryptography = gets.chomp.split('')
alph_ary = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

num.times do |i|
  cryptography.size.times do |j|
    cryptography[j] == ' ' ? cryptography[j] = ' ' : cryptography[j] = alph_ary[cryptography_key.index(cryptography[j])]
  end
end
puts cryptography.join