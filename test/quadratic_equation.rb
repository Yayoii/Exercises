include Math
# ax^2+bx+c=0 の解を求める3引数の関数（メソッド）を作る
def quadratic_equation(a, b, c)
  d = b**2 - 4*a*c
  x_1 = (-b + sqrt(d)) / (2*a)
  x_2 = (-b - sqrt(d)) / (2*a)
  print "Xの解は#{x_1}と#{x_2}です。"
end

quadratic_equation(0.0000000045, 10, 1)
# a=0.0000000045, b=10, c=1 の時 Xの解は「-0.1000000082740371」と「-2222222222.122222」です。
# コンピュータ（float、浮動小数点数演算）は、無限桁の小数を扱えず、下の位を打ち切って記憶しているため、丸め誤差が起きる。
# 丸め誤差を行った上で、絶対値がほぼ同じ数の計算などをして、有効桁数が減り、丸め誤差の影響が相対的に大きくなってしまった。ー＞桁落ち誤差
# 今回の係数ではb**2（100）に対してac（0.0000000045）が小さくて、絶対値がほぼ同じ数の加減算になってしまっています。