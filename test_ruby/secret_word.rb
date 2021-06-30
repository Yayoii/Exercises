# 文字盤と M 個の単語が与えられます。
# それぞれの単語について、その単語の先頭の文字が文字盤のどの位置にあるのかを求めるプログラムを書いてください。
# 文字盤は縦・横 N マスの正方形の形をしており、各マスには英字大文字が 1 文字書かれています。
# 文字盤を「特定の位置から始めて右下方向に読む」ことでいくつかの単語が現れる。
# 1 行目には、文字盤のサイズを表す整数 N と単語の個数を表す整数 M が半角スペース区切りで与えられ、続けて文字盤の内容が与えられる。
# その後に単語を表す文字列が与えられます。

input = gets.chomp.split(' ').map { |s| s.to_i }
dial_size = input[0] # 文字盤の縦横のサイズ

dial_ary = [] # 文字盤配列
dial_size.times do
  dial_ary << gets.chomp.split('')
end

words_ary = [] # 文字盤にある単語の配列
input[1].times do
  words_ary << gets.chomp
end

words_ary.each do |word|
  check_time = dial_size - word.size + 1 # 単語のサイズからチェック回数を求める
  check_time.times do |row|
    check_time.times do |col|
      array = []
      word.size.times do |i|
        array << dial_ary[row + i][col + i]
      end
      puts '%d %d' % [col + 1, row + 1] if array.join == word
    end
  end
end