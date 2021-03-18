# ある生鮮食品を m[kg] 仕入れました。m[kg] のうち p[%] を売ることができました。次にその売れ残りをすべてお惣菜にして販売したところ、売れ残った量のうち q[%] が売れました.
# m[kg] 仕入れたこの食品は最終的に何kg 売れ残ったでしょうか。
# 前提条件
# 1 ≦ m ≦ 1000
# 0 ≦ p, q ≦ 100
# p = 100 のとき、q = 0

def cal
  input_line = gets
  input_ary = input_line.split(" ")

  # a = input_line[0].to_i
  # b = m = input_line[1].to_i
  # c = input_line[2].to_i
  a = 0
  b = 0
  c = 0
  
  [a, b, c].each do |i|
      n = 0
      p i = input_ary[n].to_i
      n += 1
  end

  left = a * (1 - b * 0.01)
  answer = left * (1 - c * 0.01)
  puts answer.round(3)
end

cal