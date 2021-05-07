# マス目の情報と桁数 k が与えられたとき、条件に当てはまる数を見つけ出すプログラム
# 作成可能な数の最大値を 1 行に出力してください。

input = gets.chomp.split.map { |s| s.to_i }
row = input[0] # マス目の縦の大きさ(3≦row≦9)
col = input[1] # マス目の横の大きさ(3≦col≦9)
digit = input[2] # 探す数の桁数
array = []
row.times do 
  array << gets.chomp.split('').map { |s| s.to_i }
end

answer = 0
row.times do |i| # 行ごとに最大になる数字をチェックする
  (row - digit + 1).times do |j| 
    answer_array = array[i][j..j + (digit - 1)]
    num = answer_array.join('').to_i
    answer = num if num >= answer
  end
end

(row - digit + 1).times do |j| # 列ごとに最大になる数字をチェックする
  col.times do |i|
    answer_array = []
    digit.times do |k|
      answer_array << array[k + j][i]
    end
    num = answer_array.join('').to_i
    answer = num if num >= answer
  end
end

p answer