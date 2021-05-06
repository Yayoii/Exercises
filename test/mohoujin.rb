input = gets.chomp.to_i

array = []
input.times do |i|
    array << gets.chomp.split(' ').map { |s| s.to_i }
end

sum = 0
input.times do |i|
  if array[i].include?(0)
    next
  else
    input.times do |j|
      sum += array[i][j]
    end
    break
  end
end

input.times do |i|
  if array[i].count(0) == 1
    array_total = 0
    array[i].each { |s| array_total += s }
    answer = sum - array_total
    array[i][array[i].index(0)] = answer
  elsif array[i].count(0) == 2
    2.times do 
      col_total = 0
      index = array[i].index(0)
      input.times do |j|
        col_total += array[j][index]
      end
      answer = sum - col_total
      array[i][array[i].index(0)] = answer
    end
  else
    next
  end
end

input.times do |i|
  print array[i].join(' ')
  puts
end