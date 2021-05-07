start_spot = gets.chomp.split(' ').map { |s| s.to_i }
moving_count_array = gets.chomp.split(' ').map { |s| s.to_i }
num = gets.chomp.to_i

order_array = []
num.times do |i|
  order_array << gets.chomp.split(' ')
end

direct = 'F'
num.times do |i|
  if order_array[i][0] == 't' # 方向転換の時の処理
    if direct == 'F'
      if order_array[i][1] == 'R'
        direct = 'R'
      elsif order_array[i][1] == 'L'
        direct = 'L'
      elsif order_array[i][1] == 'B'
        direct = 'B'
      end
    elsif direct == 'R'
      if order_array[i][1] == 'R'
        direct = 'B'
      elsif order_array[i][1] == 'L'
        direct = 'F'
      elsif order_array[i][1] == 'B'
        direct = 'L'
      end
    elsif direct == 'L'
      if order_array[i][1] == 'R'
        direct = 'F'
      elsif order_array[i][1] == 'L'
        direct = 'B'
      elsif order_array[i][1] == 'B'
        direct = 'R'
      end
    elsif direct == 'B'
      if order_array[i][1] == 'R'
        direct = 'L'
      elsif order_array[i][1] == 'L'
        direct = 'R'
      elsif order_array[i][1] == 'B'
        direct = 'F'
      end
    end
  elsif order_array[i][0] == 'm' # 移動の時の処理
    if direct == 'F'
      if order_array[i][1] == 'F'
        start_spot[1] += moving_count_array[0]
      elsif order_array[i][1] == 'R'
        start_spot[0] += moving_count_array[1]
      elsif order_array[i][1] == 'L'
        start_spot[0] -= moving_count_array[3]
      elsif order_array[i][1] == 'B'
        start_spot[1] -= moving_count_array[2]
      end
    elsif direct == 'R'
      if order_array[i][1] == 'F'
        start_spot[0] += moving_count_array[0]
      elsif order_array[i][1] == 'R'
        start_spot[1] -= moving_count_array[1]
      elsif order_array[i][1] == 'L'
        start_spot[1] += moving_count_array[3]
      elsif order_array[i][1] == 'B'
        start_spot[0] -= moving_count_array[2]
      end
    elsif direct == 'L'
      if order_array[i][1] == 'F'
        start_spot[0] -= moving_count_array[0]
      elsif order_array[i][1] == 'R'
        dstart_spot[1] += moving_count_array[1]
      elsif order_array[i][1] == 'L'
        start_spot[1] -= moving_count_array[3]
      elsif order_array[i][1] == 'B'
        start_spot[0] += moving_count_array[2]
      end
    elsif direct == 'B'
      if order_array[i][1] == 'F'
        start_spot[1] -= moving_count_array[0]
      elsif order_array[i][1] == 'R'
        start_spot[0] -= moving_count_array[1]
      elsif order_array[i][1] == 'L'
        start_spot[0] += moving_count_array[3]
      elsif order_array[i][1] == 'B'
        start_spot[1] += moving_count_array[2]
      end
    end
  end
end
puts start_spot.join(' ')
