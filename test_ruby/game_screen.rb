# ある画面をスクロールする際に、前回の背景の描画結果をコピーし、前回の背景に無い画素のみを描画する。
# 画面の解像度と y 軸方向、 x 軸方向のスクロール距離が与えられる。
# この時、コピーして描画量を減らした結果、どれほどの画素を描画するかを出力して下さい。


input1 = gets.chomp.split(' ').map { |s| s.to_i }
input2 = gets.chomp.split(' ').map { |s| s.to_i }
# 画面の縦方向の解像度（1 ≦ h ≦ 10,000）
h = input1[0]
# 横方向の解像度（1 ≦ w ≦ 10,000）
w = input1[1]
# y 軸方向にスクロールする距離（-h ≦ dy ≦ h）
dy = input2[0].abs
# x 軸方向にスクロールする距離（-w ≦ dy ≦ w）
dx = input2[1].abs

puts answer = (h * dx) + (w * dy) - (dy * dx)