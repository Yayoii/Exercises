# 足し算される二つの数を表す文字列 S1, S2（1 ≦ S_1, S_2 の長さ≦ 10）が与えられるので、足し算の結果を PAIZA 表記で求めてください。
# PAIZA表記とは"A", "B", "C", "D", "E" のみからなる文字列である。
# "A" が 0、"B" が 1、"C" が 2、"D" が 3、"E" が 4 を表す 5 進数である。

input = gets.chomp.split(' ').map { |s| s.reverse.chars }
alph_to_num = { 'A' => 0, 'B' => 1, 'C' => 2, 'D' => 3, 'E' => 4 }
num_to_alph = { 0 => 'A', 1 => 'B', 2 => 'C', 3 => 'D', 4 => 'E' }

sum = 0 # 10進数に変換後、各要素の和を求める
input.size.times do |i|
  input[i].size.times do |j|
    sum += alph_to_num[input[i][j]] * ( 5 ** j )
  end
end

max_size = input.max {|a, b| a.size <=> b.size }.size
answer_array = []
(max_size - 1).downto(0) do |i| # 各要素の和から5進数に変換後アルファベットを求める
  answer_array << num_to_alph[sum.divmod( 5 ** i )[0]]
  sum = sum.divmod( 5 ** i )[1]
end
puts answer_array.join
