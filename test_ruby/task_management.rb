# 優先度が高い順に、タスクの必要日数、開始日、終了日が与えられるので全てのタスクを終了日までに完了できるか判定してください。
# 与えられた優先度順に並べられているタスクから、実行可能な優先度の一番高いタスクを常に実行する際、
# 全てのタスクを終了日までに完了できる場合は "YES"、なんらかのタスクを終了日までに完了できない場合は "NO" を出力してください。


num = gets.to_i # タスクの数（1 ≦ N ≦ 100）
input_array = []
num.times do 
  input_array << gets.chomp.split(' ').map { |s| s.to_i }
end
task_days_array = [] # 優先度が高いもの順に、タスクの必要日数
start_array = [] # 優先度が高いもの順に、開始日
end_array = [] # 優先度が高いもの順に、終了日
num.times do |i|
  task_days_array << input_array[i][0]
  start_array << input_array[i][1]
  end_array << input_array[i][2]
end

start_min = start_array.min { |a, b| a <=> b }
end_max = end_array.max { |a, b| a <=> b }
nil_array = Array.new(end_max)

# nil配列に優先度が高いタスクから順に指定期間の範囲で１を入れていく → 最終的に各タスク配列がnilになっていなかったらNOを出力
answer = []
num.times do |i|
  index_array = Array.new(end_array[i]-start_array[i]+1) { |n| n + start_array[i] } # 指定期間の数字の配列 = nil配列の添字に使う
  task_array = Array.new(task_days_array[i], 1) # 各タスクの必要日数分だけ１が入った配列
  index_array.each do |j|
    if nil_array[j] == nil
      nil_array[j] = task_array.pop
    else
      next
    end
  end
  task_array.empty? ? answer << 'YES' : answer << 'NO'
end

puts answer.include?('NO') ? 'NO' : 'YES'
