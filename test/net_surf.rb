num = gets.to_i
input_array = []
num.times do |i|
  input_array << gets.chomp
end

GOTO = 'go to '
pages = []

input_array.each do |input|
  if input.start_with?(GOTO)
    pages.push(input[GOTO.length..-1])
  else
    pages.pop
  end
  puts pages.last
end
