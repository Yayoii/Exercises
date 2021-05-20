# 名刺の番号mが与えられるので、その名刺の裏側の名刺の番号を表示するプログラムを作成してください。
# 1番からn番の名刺は、1枚目のファイルの表面から見たときに左詰めに並んでおり
# n+1番から2n番の名刺は、1枚目のファイルの裏面から見たときに左詰めに並んでいます。 2枚目以降のファイルにも同様に名刺が並んでいます。
# バインダーのポケットの数nと名刺の番号mが半角スペース区切りで入力されます(1 ≦ n,m ≦ 100,000)

input = gets.split(' ').map { |s| s.to_i }
pocket = input[0] #バインダーのポケットの数
num_of_card = input[1] #名刺の番号
page_of_card = 1 #指定された名刺があるページ数
if pocket < num_of_card
  page_of_card = ((num_of_card.to_f / pocket.to_f) / 2).ceil
end

# 指定された名刺があるページの表と裏の配列を作り、その配列から指定された名刺に対応する名刺の番号を取る
ary1_start = pocket * (page_of_card - 1) * 2 + 1
ary2_start = pocket * 2 * page_of_card
num_ary1 = []
num_ary2 = []
ary1_start.upto(ary1_start + pocket - 1) { |n| num_ary1 << n }
ary2_start.downto(ary2_start - pocket + 1) { |n| num_ary2 << n }
puts num_ary1.include?(num_of_card) ? num_ary2[num_ary1.index(num_of_card)] : num_ary1[num_ary2.index(num_of_card)]
