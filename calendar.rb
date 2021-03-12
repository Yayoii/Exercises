require 'date'

def calendar
  print "年を入力して下さい"
  year = gets.to_i
  print "月を入力して下さい"
  month = gets.to_i
  firstday = Date.new(year,month,1) 
  lastday = Date.new(year,month,-1)

  first_wday = firstday.wday  # １日の曜日(0-6)
  lastday_day = lastday.day

  days = (1..lastday_day).map{ |d| d.to_s.center(3) }
  weeks = (Array.new(first_wday, '   ') + days).each_slice(7).to_a

  puts '-' * 27
  puts "#{year}年#{month}月".center(27)
  puts "sun mon tue wed thu fri sat"
  weeks.each do |week|
    puts week.join(' ')
  end
  puts '-' * 27
end

calendar