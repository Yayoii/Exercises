# 4枚のカードが入力として与えられるので、 その4枚でできる最も強い手役の名前を出力するプログラム
# カードはアルファベットの大文字 A ～ Z か、 ワイルドカード * の 27 種
# 4 枚のカードから作れる最高の手役を "FourCard"、"ThreeCard"、"TwoPair"、"OnePair"、"NoPair"の中から選び、 1 行で出力
# 強さは("FourCard" ＞ "ThreeCard" ＞ "TwoPair" ＞ "OnePair" ＞ "NoPair")、* は好きなアルファベットとして使うことができます。

input = gets.chomp.split('')
key_value = input.group_by{ |s| s }

if input.include?('*') # ワイルドカードが含まれている時
  case key_value.size
  when 2
    puts 'FourCard'
  when 3
    puts 'ThreeCard'
  else
    puts 'OnePair'
  end
else
  case key_value.size 
  when 1
    puts 'FourCard'
  when 2 # key_valueのサイズ2になるのは2パターンあるのでvalueのサイズで更に分ける
    puts ( key_value.values[0].size == 2 ? 'TwoPair' : 'ThreeCard' )
  when 3
    puts 'OnePair'
  else
    puts 'NoPair'
  end
end