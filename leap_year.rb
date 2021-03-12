def leapYear(year)
  if year%100 == 0 && year%400 != 0
    puts "#{year}年はうるう年ではありません。"
  elsif year%4 == 0
    puts "#{year}年はうるう年です。"
  else
    puts "#{year}年はうるう年ではありません。"
  end
end

puts leapYear(2200)