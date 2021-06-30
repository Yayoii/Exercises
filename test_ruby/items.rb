input = gets.chomp.split(' ').map { |s| s.to_i }
# A 君、B 君がもらった報酬に関する情報を表す整数 n 
n = input[0]
# 報酬を分ける際の制約にかかわる整数 K
k = input[1]
num = 2 * n
array = (1..num).map { |i| i }
a_array = array.combination(n).to_a
b_array = a_array.reverse

answer = 0
a_array.size.times do |i|
    sum = 0
    n.times do |j|
        sum += (a_array[i][j] - b_array[i][j]).abs
    end
    if sum <= k
        answer += 1
    end
end

p answer