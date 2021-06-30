# 見出しの情報と各行の情報から見やすい表を生成するプログラム
# 表の 1 行目を見出し行、2 行目を区切り行、 3 行目以降をデータ行とする。
# 表の各見出し・データを格納する部分は "| xxx |" のように縦棒の間に見出し・データが入り、見出し・データの前後に1つ以上半角スペースが入る形にします。
# 各列の幅はその列の中で最も長さの大きい見出し・データが上記の形で収まる最小の幅にします。

titles_num = gets.to_i
title_arry = gets.chomp.split(' ')
datas_num = gets.to_i
data_matrix = [title_arry]
datas_num.times do |i|
  data_matrix << gets.chomp.split(' ')
end

col_max_size_arry = [] # 列における最大要素のサイズを入れる配列
titles_num.times do |i|
  col_arry = []
  (datas_num + 1).times do |j|
    col_arry << data_matrix[j][i]
  end
  col_max_size_arry << col_arry.max {|a, b| a.size <=> b.size}.size
end

line = [] # タイトルとデータを仕切る（２行目）のライン用の配列
titles_num.times do |i|
  line << "-" * (col_max_size_arry[i] + 2)
end

(datas_num + 1).times do |i| # それぞれの要素の幅を最大要素の幅に統一する
  titles_num.times do |j|
    data_matrix[i][j] = data_matrix[i][j].ljust(col_max_size_arry[j])
  end
end

(datas_num + 1).times do |i|
  puts "|#{line.join('|')}|" if i == 1
  puts "| #{data_matrix[i].join(' | ')} |"
end