def eto
  a = ["庚", "辛", "壬", "癸", "甲", "乙", "丙", "丁", "戊", "己"]
  b = ["申", "酉", "戌", "亥", "子", "丑", "寅", "卯", "辰", "巳", "午", "未"]
  p a.size
  print "西暦を入力してください: "
  y = gets.to_i
  puts "干支は#{a[y%10]}#{b[y%12]}です。"
end


eto