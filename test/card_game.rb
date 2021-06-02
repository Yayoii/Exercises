# 4枚のカードが入力として与えられるので、 その4枚でできる最も強い手役の名前を出力するプログラム
# カードはアルファベットの大文字 A ～ Z か、 ワイルドカード * の 27 種
# 4 枚のカードから作れる最高の手役を "FourCard"、"ThreeCard"、"TwoPair"、"OnePair"、"NoPair"の中から選び、 1 行で出力
# 強さは("FourCard" ＞ "ThreeCard" ＞ "TwoPair" ＞ "OnePair" ＞ "NoPair")、* は好きなアルファベットとして使うことができます。

input = gets.chomp.split('')
ary = input.sort
card_num = 4

if ary[0] == '*' # ワイルドカードが含まれている時
  key_value = ary.group_by{ |s| s }
  if key_value.size == 2
    puts 'FourCard'
  elsif key_value.size == 3
    puts 'ThreeCard'
  else
    puts 'OnePair'
  end
else # ワイルドカードが含まれていない時
  key_value = ary.group_by{ |s| s }
  if key_value.size == 1
    puts 'FourCard'
  elsif key_value.size == 2
    key_value.each do |key, value| # key_valueのサイズ2になるのは2パターンあるのでvalueのサイズ比較で更に分ける
      if value.size == 2
        puts 'TwoPair'
        break
      else
        puts 'ThreeCard'
        break
      end
    end
  elsif key_value.size == 3
        puts 'OnePair'
  else
        puts 'NoPair'
  end
end
