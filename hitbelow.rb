N = 4

def hit_below
  answers = make_answer
  loop do
    print "#{N}桁の数字を入力して下さい。\n"
    inputs = gets.split("")

    # 桁も数字もあっていれば「Hit」
    hit_sum = 0
    N.times do |i|
      hit_sum += 1 if answers[i] == inputs[i]
    end
    puts "#{hit_sum}Hit" if hit_sum != 0
    break if N == hit_sum

    # 数字はあっているが桁が異なっていれば「Below」
    below_sum = 0
    N.times do |i|
      r = answers[i]
      below_sum += 1 if inputs.include?(r) && r != inputs[i]
    end
    puts "#{below_sum}Below" if below_sum != 0

  end
end

# 正解を作成する（ゾロ目の正解が出ないようにする）
def make_answer
  answer = nil
  loop do
    answer = rand(10**(N - 1)...10**N).to_s.split("")
    break if answer.uniq.size == N
  end
  answer
end

hit_below
