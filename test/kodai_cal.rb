# 連続する "<" の数が整数の 10 の位を表し、それに続く連続する "/" (スラッシュ) の数が整数の 1 の位を表す
# "+" が足し算の記号を表す。使用する整数は 1 から 99 までで、10 進法。
# ///+//// => 3 + 4 = 7

def kodai
input_line = gets.split("+")
sum = 0
(0...input_line.size).each do |j|
input_line_contents = input_line[j].split("")
    (0..input_line_contents.size).each do |i|
        if input_line_contents[i] == "/"
            sum += 1
        elsif input_line_contents[i] == "<"
            sum += 10
        end
    end
end
puts sum
end

kodai