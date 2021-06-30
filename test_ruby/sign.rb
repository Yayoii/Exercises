# 月日から星座を求める
print '誕生日の月を入力してください(半角数字): '
month = gets.chomp.to_s
print '誕生日の日にちを入力してください(半角数字): '
day = gets.chomp.to_s
date = (month + day).to_i

array = [ 119, 218, 320, 419, 520, 621, 722, 822, 922, 1023, 1122, 1221, 1231]
sign_array = [ '山羊', '水瓶', '魚', '牡羊', '牡牛', '双子', '蟹', '獅子', '乙女', '天秤', '蠍', '射手', '山羊']

array.size.times do |i|
  if date <= array[i]
    puts "あなたの星座は、#{sign_array[array.index(array[i])]}座です。"
    break
  end
end
# sign_table ={ 
#   0101..0119: '山羊', 
#   0120..0218: '水瓶', 
#   0219..0320: '魚', 
#   0321..0419: '牡羊', 
#   0420..0520: '牡牛', 
#   0521..0621: '双子', 
#   0622..0722: '蟹', 
#   0723..0822: '獅子', 
#   0823..0922: '乙女', 
#   0923..1023: '天秤', 
#   1024..1122: '蠍', 
#   1123..1221: '射手', 
#   1222..1231: '山羊'
# }

# case date
# when <= 0119
#   puts '山羊'
# when <= 0218
#   puts '水瓶'
# when <= 0320
#   puts '魚'
# when <= 0419
#   puts '牡羊'
# when <= 0520
#   puts '牡牛'
# when <= 0621
#   puts '双子'
# when <= 0722
#   puts '蟹'
# when <= 0822
#   puts '獅子'
# when <= 0922
#   puts '乙女'
# when <= 1023
#   puts '天秤'
# when <= 1122
#   puts '蠍'
# when <= 1221
#   puts '射手'
# when <= 1231
#   puts '山羊'
# end
