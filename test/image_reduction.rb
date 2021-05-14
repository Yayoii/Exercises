input = gets.chomp.split(' ').map { |s| s.to_i }
screen_size = input[0] # 入力される画面サイズ
reduction = input[1] # 縮小の倍率
answer_screen_size = screen_size/reduction # 答えとなるマトリックス図のサイズを表す数字

pixel_matrix = []
screen_size.times do |i|
  pixel_matrix << gets.chomp.split(' ').map { |s| s.to_i }
end

answer_screen_size.times do # 行ごとに縮小倍率の分の要素を足す
  screen_size.times do |i|
    sum = 0
    reduction.times do 
      sum += pixel_matrix[i].shift
    end
    pixel_matrix[i] << sum
  end
end

answer_pixel_array = []
answer_screen_size.times do
  answer_screen_size.times do
    sum = 0
    reduction.times do |j|  # 列ごとに縮小倍率の分の要素を足す
      sum += pixel_matrix[j].shift
    end
    answer_pixel_array << sum
  end
  reduction.times do # 空になった配列を取り除く
    pixel_matrix.shift
  end
end

answer = []
answer_pixel_array.map do |num| # すべての要素を足し終わった数から平均を出す
  answer << num / (reduction * reduction)
end

answer_screen_size.times do |i|
  puts answer.each_slice(answer_screen_size).to_a[i].join(' ')
end