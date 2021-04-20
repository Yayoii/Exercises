# 7日以上かつ、どの7日間でも 週休2日 以上で働ける最長の期間の日数を出力して下さい。
# そのような期間が存在しない場合は 0 と出力してください。
# 1 行目にスケジュールの日数 N が整数で与えられます（7 ≦ N ≦ 100,000）
# 2 行目に、その日が平日（１）か休日（０）かを示す N 個の整数が半角スペース区切りで与えられます。

ndays = gets.chomp.to_i
days = gets.chomp.split(' ').map { |s| s.to_i }

first_set = 6 # 入力値から6日分引くと、チェック回数が求められる
one_week = 7
flags = []
(ndays - first_set).times do |i|
  zero_count = days[i, one_week].select { |n| n == 0 }.size
  flags << (zero_count >= 2 ? true : false)
end

count = 0
count_array = []
flags.each do |n| 
  if n
    count += 1 
  else
    count_array << count
    count = 0
  end
end
count_array << count

answer = 0
count_array.size.times do |i|
  answer = count_array.max { |a, b| a <=> b }
  answer = answer + first_set unless answer == 0
end
p answer

# flags.each_index do |i|
#   n = 0
#   flags[i..-1].each do |f|
#     break unless f
#     n += 1
#   end
#   flags[i] = n
# end
# p flags.max == 0 ? 0 : flags.max + first_set