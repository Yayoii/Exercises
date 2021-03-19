# ある生鮮食品を a[kg] 仕入れました。a[kg] のうち b[%] を売ることができました。次にその売れ残りをすべてお惣菜にして販売したところ、売れ残った量のうち c[%] が売れました.
# a[kg] 仕入れたこの食品は最終的に何kg 売れ残ったでしょうか。
# 前提条件 : [1 ≦ a ≦ 1000] [0 ≦ b, c ≦ 100] [p = 100 のとき、q = 0]

def cal
  input_line = gets.split(" ")

  ary = []
  (0..2).each do |i|
    ary << input_line[i].to_i
  end

  return ary[2] = 0 if ary[1] == 100
  left = ary[0].rationalize * (1 - ary[1].rationalize * 0.01r)
  answer = left * (1 - ary[2].rationalize * 0.01r)
  puts answer.to_f.round(3)
end

# a = input_line[0].to_i
  # b = input_line[1].to_i
  # c = input_line[2].to_i