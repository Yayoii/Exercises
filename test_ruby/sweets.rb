# お菓子の総額を指定範囲内
# 種類の数を最大にする
# 同じお菓子は複数買わない
# お釣りを最小
# お釣りを最小にすることよりも種類の数を最大にすることを優先する
# 上記の条件で、お菓子の種類を最大に、お釣りを最小にした時のお釣りを整数で出力

inputs = gets.chomp.split(' ').map { |s| s.to_i }
# 選択できるお菓子の種類
type = inputs[0]
# 所持金額
money = inputs[1]

sweets_array = []
type.times do |i|
  sweets_array << gets.chomp.to_i
end

pre_sum = 0
pre_answer = 0
types = 0 # 答えとなるお菓子の組み合わせの数を保持する為の変数
ascend_array = sweets_array.sort!
type.times do |i|
  pre_sum += ascend_array[i]
  if pre_sum <= money
    pre_answer = pre_sum
    types = i + 1
  else
    break
  end
end

# お釣りが最小となるanswerになっているかを確認
answer = 0
if types != type
  types.times do |i|
    answer_types = ascend_array[i, types]
    sum = 0
    types.times do |j|
      sum += answer_types[j]
    end
    if sum <= money
      answer = sum
    else
      break
    end
  end
  p money - answer
else
  p money - pre_answer 
end