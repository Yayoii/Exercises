# 修復した魔方陣を出力するプログラム。答えとしてあり得る魔方陣は一通りである。
# 魔方陣の行数・列数を表すN（3 ≦ N ≦ 10）、および見えている数字の情報が与えられるので、わからない部分を埋めて魔方陣を修復してください。
# わからない部分は0で入力されます。0の数は2個以下。

input = gets.chomp.to_i
array = []
sum = 0

input.times do |i|
  array << gets.chomp.split(' ').map { |s| s.to_i }
end

input.times do |i| # 0がない列の魔法陣の総和を求める
  if array[i].count(0) == 0
    input.times { |j| sum += array[i][j] }
    break
  end
end

input.times do |i|
  if array[i].count(0) == 1 # 列に0が1つ含まれていたときの処理
    row_total = 0
    array[i].each { |s| row_total += s }
    array[i][array[i].index(0)] = sum - row_total
  elsif array[i].count(0) == 2 # 列に0が2つ含まれていたときの処理
    2.times do 
      col_total = 0
      index = array[i].index(0)
      input.times { |j| col_total += array[j][index] }
      array[i][array[i].index(0)] = sum - col_total
    end
  end
end

input.times do |i|
  print array[i].join(' ')
  puts
end