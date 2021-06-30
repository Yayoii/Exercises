# 立体のデータが入力された時、この立体を正面（x軸の正の方向）から見たときの図を出力するプログラム
# 各 (x,y,z) は '#' または '.' からなる一文字で、この文字が '#' のときはセル (x,y,z) が立体に含まれることを、
# '.' のときはセル (x,y,z) が立体に含まれないことを意味します

input = gets.chomp.split(' ').map { |s| s.to_i }
x = input[0] # 立体の奥行き（1 ≦ X ≦ 50）
y = input[1] # 立体の横幅（1 ≦ Y ≦ 50）
z = input[2] # 立体の高さ（1 ≦ Z ≦ 50）

answer_matrix = Array.new(z) { Array.new(y,'.') } # 初期値を . として答えになる二次配列を作る

z.times do |i|
  matrix = []
  (x + 1).times do
    matrix << gets.chomp.split('')
  end
  matrix.each do |ary| # 入力された二次配列の中身を一段づつ見ていき、#のときはanswer_matrixへ同じ添字のところへ代入
    ary.each_with_index do | value, index |
      answer_matrix[i][index] = '#' if value == '#'
    end
  end
end

z.times do |i| # answer_matrixの上段下段が逆なので注意
  puts answer_matrix.reverse[i].join
end