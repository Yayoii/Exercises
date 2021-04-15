# 7日以上かつ、どの7日間でも 週休2日 以上で働ける最長の期間の日数を出力して下さい。
# そのような期間が存在しない場合は 0 と出力してください。
# 1 行目にスケジュールの日数 N が整数で与えられます（7 ≦ N ≦ 100,000）
# 2 行目に、その日が平日（１）か休日（０）かを示す N 個の整数が半角スペース区切りで与えられます。

holiday = gets.chomp.to_i
weekdays_holidays_array = gets.chomp.split(' ').map { |s| s.to_i }

array = []
answer_array = []
(holiday-6).times do |i|
  check_array = weekdays_holidays_array[i..i+6]
  zero_array = check_array.select { |n| n == 0 }
  if zero_array.size >= 2
    next check_array.map { |n| array << n } if array.empty?
    array << check_array.pop
  elsif zero_array.size < 2 && !array.empty?
    answer_array << array
    array.clear
  end
end
answer_array << array

answer = []
answer_array.size.times do |i|
  answer = answer_array.max { |a, b| a.size <=> b.size }
end
p answer.size
