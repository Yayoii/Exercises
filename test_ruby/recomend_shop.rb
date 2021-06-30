# N店の中から、自分が行ったことがなく、かつ「好みが似ているユーザー」が星3の評価をしているようなお店を全て出力するプログラム
# あるユーザーに対し、自分とそのユーザーの両方とも評価が星3のお店の数がある定数 K 以上であるとき、「好みが似ているユーザー」と定義
# 1行目にお店の数を表す整数 N 、自分以外のユーザーの数を表す整数 M 、自分と好みが似ていると言える基準の数を表す整数 K がこの順で半角スペース区切りで与えられます。
# 2行目には自分のリストの情報が、 N 個の整数が半角スペース区切りで与えられます。
# 続く M 行のうち i 行目(1 ≦ i ≦ M) には、 N 個の整数が半角スペース区切りで与えられます。(他ユーザーのリスト)

input = gets.chomp.split(' ').map { |s| s.to_i }
shop_num = input[0] # お店の数を表す整数 N 
user_num = input[1] # 自分以外のユーザーの数を表す整数 M
border_line = input[2] # 自分と好みが似ていると言える基準の数を表す整数 K
my_list_ary = gets.chomp.split(' ').map { |s| s.to_i } # 自分のリストの情報
user_list_matrix = [] # 他ユーザーのリストの情報
user_num.times do
  user_list_matrix << gets.chomp.split(' ').map { |s| s.to_i }
end

answer_ary = []
user_num.times do |i|
  count = 0
  shop_num.times do |j| # 自分と好みが似ているかどうかをチェックする処理
    count += 1 if user_list_matrix[i][j] == 3 && my_list_ary[j] == 3
  end
  if count >= border_line # 自分と好みが似ていたとき、自分が行ったことがなく、かつそのユーザーが星3の評価をしているお店を配列に入れる
    shop_num.times do |j|
      answer_ary << j + 1 if user_list_matrix[i][j] == 3 && my_list_ary[j] == 0
    end
  end
end
if answer_ary.empty?
  puts 'no'
else
  puts answer_ary.uniq.sort.join(' ')
end