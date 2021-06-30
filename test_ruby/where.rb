input = gets.chomp.split(' ').map{ |s| s.to_i }
width = input[0]
height = input[1]
moving_num = input[2]
start_position = gets.chomp.split(' ').map{ |s| s.to_i }

moving_num.times do 
  moving_ary = gets.chomp.split(' ')
  if moving_ary[0] == 'U' # 上に移動するときの処理
    start_position[1] += moving_ary[1].to_i
    start_position[1] -= height if start_position[1] > height
  elsif moving_ary[0] == 'D' # 下に移動するときの処理
    start_position[1] -= moving_ary[1].to_i
    start_position[1] += height if start_position[1] < 0
  elsif moving_ary[0] == 'R' # 右に移動するときの処理
    start_position[0] += moving_ary[1].to_i
    start_position[0] -= width if start_position[0] > width
  else # 左に移動するときの処理
    start_position[0] -= moving_ary[1].to_i
    start_position[0] += width if start_position[0] < 0
  end
end
puts start_position.join(' ')