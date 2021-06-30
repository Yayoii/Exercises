# N 人分の先月の走った距離と今月のジョギングの記録が M 個与えられるので、今月の上位 T 人をラベルとともに出力するプログラム
# 今月新しく上位 T 人に入ってきた人には "new"、 先月より順位が上がった人には "up"、 下がった人には "down"、 順位が変わらない人には "same"、 というラベルが付けられます。
# 同じ人が複数回ジョギングした場合、順位付けにはその人が今月走った距離の合計を使います。 
# 走った距離が同じときは、辞書順に並べたときに早い名前の方の部員を上位とします。

input = gets.chomp.split(' ').map { |s| s.to_i }
member_num = input[0] # 部員の数
new_records_num = input[1] # 今月のジョギング記録の数
ranking_num = input[2] # 成績表に表示される数
old_records_ary = [] # 先月の記録
member_num.times do
  old_records_ary << gets.chomp.split(' ')
end
old_records_ary.sort! {|a, b| a[0] <=> b[0] }
old_ranking_ary = old_records_ary.sort! {|a, b| b[1].to_i <=> a[1].to_i }.slice(0,ranking_num) # 並び替えて成績表を作成

new_records_ary = [] # 今月の記録
new_records_num.times do 
  new_records_ary << gets.chomp.split(' ').slice(1,2)
end

new_records_ary.each do |ary| # 名前から今月走った距離の合計を計算
  same_name_records = new_records_ary.select { |v| v[0] == ary[0] }
  if same_name_records.size > 1
    sum = 0
    same_name_records.size.times do |i|
      sum += same_name_records[i][1].to_i
    end
    ary[1] = sum.to_s
    new_records_ary.delete_if { |item| item[0] == ary[0] }
    new_records_ary.unshift(ary)
  end
end
new_records_ary.sort! {|a, b| a[0] <=> b[0] }
new_ranking_ary = new_records_ary.sort! {|a, b| b[1].to_i <=> a[1].to_i }.slice(0,ranking_num) # 並び替えて成績表を作成

if new_ranking_ary.size < ranking_num # 今月の記録から作られた成績表要素が不足しているときの処理
  old_ranking_ary.each do |ary|
    if new_records_ary.select { |v| v[0] == ary[0] }.empty?
      ary[1] = '0'
      new_ranking_ary << ary
    end
  end
end
        
new_ranking_ary.each_with_index do |element, index|
  old_ranking_ary.each_with_index do |e, i|
    if element[0] == e[0]
      if index == i
        element << 'same'
      elsif index < i
        element << 'up'
      elsif index > i
        element << 'down'
      end
    end
  end
  element << 'new' if element.size == 2
end

new_ranking_ary.size.times do |i|
puts new_ranking_ary[i].join(' ')
end
