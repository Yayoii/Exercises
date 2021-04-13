# 花壇を過不足なく囲うのに必要なロープの本数を整数で出力
# 1 行目に地図の縦幅を表す整数 H と横幅を表す整数 W がこの順で半角スペース区切りで与えられる
# H 行のうちの i 行目 (1 ≦ i ≦ H) には半角記号 "#" および "." からなる長さ W の文字列 s_i が与えられます。
# s_i の j 番目 (1 ≦ j ≦ W) の文字は地図における i 行 j 列目の区画の地面の様子を表し、"#" は花壇を、"." はその他の部分を表します。

input = gets.split(' ')
# 地図の縦幅(行数)
row = input[0].to_i
# 地図の縦幅(列数)
col = input[1].to_i

input_ary = []
row.times do
  input_ary << gets.chomp.split('')
end

# '#'が出てきたら+4、その後に行・列ごとに重なった部分を-2する
sum = 0
rope = 4
duplicate = 2
row.times do |i| # 行における重なりを考慮して必要なロープの数を計算
  col.times do |j|
    sum += rope if input_ary[i][j] == '#'
  end
  (col - 1).times do |j|
    sum -= duplicate if input_ary[i][j] == '#' && input_ary[i][j + 1] == '#'
  end
end

(row - 1).times do |i| # 更に、列における重なりを考慮して必要なロープの数を計算
  col.times do |j|
    sum -= duplicate if input_ary[i][j] == '#' && input_ary[i][j] == input_ary[i + 1][j]
  end
end

p sum
