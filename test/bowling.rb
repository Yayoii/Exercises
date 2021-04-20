# ボウリングのスコア計算プログラム。出力は最終合計得点数

input = gets.chomp.split(' ').map { |s| s.to_i }
# フレーム数
input = gets.chomp.split(' ').map { |s| s.to_i }
# フレーム数
flame = input[0]
# ピンの数(=ストライク・スペア)
pin = input[1]
# 投球数
trow = input[2]

array = gets.chomp.split(' ')
new_array = array.map do |s| # 'G'を0に置き換え、数値の配列にする
  s == 'G' ? s = 0 : s.to_i
end

sum = 0
# 最終フレーム以外を計算
(flame - 1).times do |i|
  if new_array[0] == pin #ストライクのとき
    sum += new_array[0] + new_array[1] + new_array[2]
    new_array.shift()
  elsif new_array[0] + new_array[1] == pin #スペアのとき
    sum += new_array[0] + new_array[1] + new_array[2]
    new_array.shift(2)
  else
    sum += new_array[0] + new_array[1]
    new_array.shift(2)
  end
end

# 最終フレームを計算
if new_array[0] == pin #ストライクのとき
  if new_array[1] == pin #ストライク → ストライクのとき
    sum += new_array[0] + new_array[1] * 2 + new_array[2] * 3
  else
    sum += new_array[0] + new_array[1] * 2 + new_array[2] * 2
  end
elsif new_array[0] + new_array[1] == pin #スペアのとき
  sum += new_array[0] + new_array[1] + new_array[2] * 2
else
  sum += new_array[0] + new_array[1]
end

p sum

