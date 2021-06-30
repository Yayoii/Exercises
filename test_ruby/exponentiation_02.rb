# 累乗（バイナリ法）
def exponentiation(a,n)
  y = 1
  z = a
  n.to_s(2).split("").reverse.each do |i|
      y *= z if i == "1"
    z *= z
  end
    puts "答えは#{y}"
end

print exponentiation(2,1000007) #(2, 1000007) => 1.502 sec
