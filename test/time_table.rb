# B009:カンファレンスのタイムテーブル作成

presenter_num = gets.chomp.to_i # 発表者数

presenter_time_ary = [] # 各発表者の名前と発表時間の配列
presenter_num.times do
  presenter_time_ary << gets.split(' ')
end

start = 590 # 00:00をスタートとして9:50（最初にstart += 10するので−10分）までを分換算した数
lunch_time_line = 721 # 12:01 を分換算した数

time_table_ary = Array.new(presenter_num) { Array.new([]) } # タイムテーブルを入れるための空の配列
presenter_num.times do |i|
  start += 10
  time_table_ary[i] << "%02d:%02d" % [start.divmod(60)[0], start.divmod(60)[1]]
  time_table_ary[i] << '-'
  start += presenter_time_ary[i][1].to_i
  time_table_ary[i] << "%02d:%02d" % [start.divmod(60)[0], start.divmod(60)[1]]
  time_table_ary[i] << presenter_time_ary[i][0]
  if i <= (presenter_num - 2) && start < lunch_time_line # 開始時間が既にランチタイムを過ぎていたら処理しない
    start += 50 if start + 10 + presenter_time_ary[i + 1][1].to_i >= lunch_time_line # 発表予定者のトーク終了予定時刻が12:01 以降になる場合の処理
  end
end

time_table_ary.each do |ary|
  puts ary.join(' ')
end