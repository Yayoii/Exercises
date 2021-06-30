# B025:うさぎジャンプの問題

input = gets.chomp.split(' ').map { |s|  s.to_i }
bushes_num = input[0] # 茂みの数
rabit_num = input[1] # うさぎの数
jamp_num = input[2] # うさぎがジャンプする回数

moving_ary = Array.new(bushes_num, nil) # 初期値（うさぎの最初の位置）の設定
rabit_num.times do |i|
  moving_ary[gets.to_i - 1] = i
end

jamp_num.times do
  rabit_num.times do |i|
    index = moving_ary.index(i)
    bushes_num.times do |j| # 今うさぎがいる次の位置から順にnilかどうか調べる
      check_num = index + j + 1
      check_num -= bushes_num if check_num > bushes_num - 1 # 最後まで行ったら最初から探す
      if moving_ary[check_num].nil?
        moving_ary[check_num] = i
        moving_ary[index] = nil
        break
      end
    end
  end
end

rabit_num.times do |i|
  puts moving_ary.index(i) + 1
end