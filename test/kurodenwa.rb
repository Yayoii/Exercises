#ハイフン付きの電話番号が与えられたとき、その電話番号を入力し終えるまでに、ダイヤルが回る必要のある総距離を計算するプログラム

def kurodenwa
input_line = gets.gsub(/[^0-9]/,"").split("")
sum = 0
input_line.each do |i|
    num = i.to_i
    sum += 24 if num == 0
    (1..9).each do |j|
      if num == j
        sum += j*2 + 4
      end
    end
end
puts sum
end

kurodenwa