# チョコレートをAとBで（糖度が均等になるように）分け合うプログラム
# N行M列のチョコレート、それぞれのかけらに糖度がある。それぞれの行ごとにAとBが得る糖度の和を等しくする。
# 左から連続した欠片をAが、残りをBがもらう

input_line = gets.split(' ')
# チョコレートの行数
@n = input_line[0].to_i
# チョコレートの列数
@m = input_line[1].to_i

# AとBが得る糖度の和が等しくなるかをチェック
def chacker(row)
  (@m-1).times do |i|
  chocolate_row_left = []
  chocolate_row_right = []
  sum_left = 0
  sum_right = 0
    (i+1).times do |j| # A分を計算
      chocolate_row_left << row[0+j]
      sum_left += chocolate_row_left[j]
    end
    (@m-i-1).times do |k| # B分を計算
      chocolate_row_right << row[@m-k-1]
      sum_right += chocolate_row_right[k]
    end
    if sum_left == sum_right
      return chocolate_row_left, chocolate_row_right
    end
  end
  return nil
end

chocolate_ary = []
@n.times do
  chocolate_ary << gets.split(' ').map { |s| s.to_i }
end

@n.times do |i|
  if chacker(chocolate_ary[i]).nil?
    puts 'No'
    break
  else
    puts 'Yes' if i == 0
    chacker(chocolate_ary[i])[0].size.times do
      print 'A'
    end
    chacker(chocolate_ary[i])[1].size.times do
      print 'B'
    end
      puts
    end
end
