
input_line = gets.split(' ')
# チョコレートの行数
N = input_line[0].to_i
# チョコレートの列数
M = input_line[1].to_i

# AとBが得る糖度の和が等しくなるかをチェック
def chacker(row)
  (M-1).times do |i|
  chocolate_row_left = []
  chocolate_row_right = []
  sum_left = 0
  sum_right = 0
    (i+1).times do |j| # A分を計算
      chocolate_row_left << row[0+j]
      sum_left += chocolate_row_left[j].to_i
    end
    (M-i-1).times do |k| # B分を計算
      chocolate_row_right << row[M-k-1]
      sum_right += chocolate_row_right[k].to_i
    end
    if sum_left == sum_right
      return chocolate_row_left, chocolate_row_right
    end
  end
  return nil
end

chocolate_ary = []
N.times do
  chocolate_ary << gets.split(' ')
end

N.times do |l|
  chocolate_row = []
  chocolate_ary[l].each do |o|
    chocolate_row << o.to_i
  end
  if chacker(chocolate_row).nil?
    puts 'No'
    break
  else
    puts 'Yes' if l == 0
    chacker(chocolate_row)[0].size.times do
      print 'A'
    end
    chacker(chocolate_row)[1].size.times do
      print 'B'
    end
    puts
  end
end
