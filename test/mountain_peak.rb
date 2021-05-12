# 山頂:周りの上下左右のマスよりも標高の高いマス
num = gets.to_i
matrix = []
num.times do |i|
  matrix << gets.chomp.split(' ').map { |s| s.to_i }
end

# 与えられた要素の周りを0で囲む処理
num.times do |i|
  matrix[i].push(0).unshift(0)
end
zero_array = Array.new(num + 2, 0)
matrix.push(zero_array).unshift(zero_array)

mountain_peak_array = []
(1..num).each do |i|
  (1..num).each do |j|
    checker_array = []
    checker_array << false if matrix[i][j] <= matrix[i][j - 1] #同じ行の一つ前の要素と比較
    checker_array << false if matrix[i][j] <= matrix[i][j + 1] #同じ行の次の要素と比較
    checker_array << false if matrix[i][j] <= matrix[i - 1][j] #前の行の同じ列の要素と比較
    checker_array << false if matrix[i][j] <= matrix[i + 1][j] #次の行の同じ列の要素と比較
    mountain_peak_array << matrix[i][j] unless checker_array.include?(false)
  end
end
puts mountain_peak_array.max(mountain_peak_array.size)
