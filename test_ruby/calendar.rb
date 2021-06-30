require 'date'

def calendar
  print "年を入力して下さい"
  year = gets.to_i
  print "月を入力して下さい"
  month = gets.to_i
  firstday = Date.new(year,month,1) 
  lastday = Date.new(year,month,-1)

  # wday : 曜日(0-6)
  width = 3
  one_week = 7
  days = (1..lastday.day).map{ |d| d.to_s.center(width) }
  weeks = (Array.new(firstday.wday, ' '*width) + days).each_slice(one_week).to_a

  width = 27
  puts '-' * width
  puts "#{year}年#{month}月".center(width)
  puts "sun mon tue wed thu fri sat"
  weeks.each do |week|
    puts week.join(' ')
  end
  puts '-' * width
end

calendar