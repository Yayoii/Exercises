# エレベーターの動きのログをもとに、エレベーターが何階分の距離を動いたか計算するプログラム
# 1 行目にログの行数を示す整数 N が入力が与えられ、続く N 行にエレベーターが止まった階 f_i (1 ≦ i ≦ N) が整数で順に入力されます。

def elevator
  log_num = gets.to_i
  ary = [] #入力値の配列
  log_num.times do |i|
  ary << gets.to_i
  end
  sum = ary[0] - 1
  sub = 0
  (0...ary.size-1).each do |j|
    ary[j] < ary[j + 1] ? sub = ary[j+1] - ary[j] : sub = ary[j] - ary[j + 1]
    sum += sub    
  end
  puts "エレベーターは#{sum}分動きました""
end

elevator
