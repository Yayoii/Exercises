# 相性占いをする二人の人物の名前が与えられたとき、相性占いの結果を出力するプログラムを作成してください。
# 1. 相性をチェックする二人の名前を並べた英小文字からなる文字列を入力します。
# 2. "a" を 1、"b" を 2、...、"z" を 26 として、文字列を数列に変換します。この数列を A とします。
# 3. 数列Aの隣り合う2つの数を足して前から順番に並べた新しい数列 A' を作り、これを新たに A とします。
# このとき、A の要素の大きさが 101 を超えていた場合、その要素から 101 を引きます。
# 4. 数列 A の要素数が1になるまで 3. の手順を繰り返します。A の要素数が 1 となったとき、残った要素の値を「二人の相性」とします。
# 名前の並べ方は2通り。2 通りの方法で計算した「二人の相性」のうち大きい方を出力する。

input= gets.chomp.split(' ')
paire1 = input[0] + input[1]
paire2 = input[1] + input[0]
alph_ary = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

paire1_array = []
paire2_array = []
paire1.each_char do |s|
  paire1_array << alph_ary.index(s) + 1
end
paire2.each_char do |s|
  paire2_array << alph_ary.index(s) + 1
end

def calcurater(array)
  (array.size - 1).times do |i|
    (array.size - 1).times do |j|
      total = array[j] += array[j + 1]
      total -= 101  if total >= 101
      array[j] = total
    end
    array.pop
  end
  array
end

which_answer = []
which_answer << calcurater(paire1_array)[0]
which_answer << calcurater(paire2_array)[0]
p which_answer.max { |a, b| a <=> b }