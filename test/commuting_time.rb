# 8:59 までに会社に着くには何時に自宅を出れば遅刻せずに出社できるでしょうか？ 最も遅い時刻を求めるプログラムを書いてください。

time_array = gets.chomp.split(' ').map { |s| s.to_i }
home_to_paiza = time_array[0] # 自宅から配座駅までかかる時間(1 ≦ n ≦ 30)
paiza_to_gino = time_array[1] # 配座駅から儀野駅までかかる時間(1 ≦ n ≦ 30)
gino_to_campany = time_array[2] # 儀野駅から会社までかかる時間(1 ≦ n ≦ 30)
num = gets.to_i # 配座駅から出る電車の本数を表す整数

timetable_array = []
num.times do # 入力される時刻を分表記の配列にする処理
  array = []
  array = gets.chomp.split(' ').map { |s| s.to_i }
  timetable_array << array[0] * 60 + array[1]
end

at_paiza = 539 - (gino_to_campany + paiza_to_gino) # 配座駅に着いていなければならない最遅時刻を表す数値
answer = timetable_array[0]
timetable_array.each do |num| # 時刻表（発車時間）のなかで配座駅に着いていなければならない最遅時刻よりも早くて、かつ最も発車の遅い時刻を求める
  break if num > at_paiza
  answer = num
end

time = (answer - home_to_paiza).divmod(60) # 時間と分の単位に戻す
print "#{time[0].to_s.rjust(2, "0")}:#{time[1]}"