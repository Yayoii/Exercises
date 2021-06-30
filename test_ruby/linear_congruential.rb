# 0<=x<1の範囲の乱数を発生させる
def linearCong()
  m = 65536
  a = 997
  b = 1
  x = 12345
  sum = 0

  100.times do |i| 
    x = (a * x + b) % m
    sum += x
    printf("%.4f ", x / m.to_f)
    puts if (i % 10 == 9)
  end
  average = sum / m.to_f / 100
  p "Average : #{average}"
end

linearCong()