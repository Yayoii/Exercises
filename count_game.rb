# 答えの数を探すゲーム
# 適当な数を入れると正解よりも大きいか小さいか,または正解であるか出力
# 答えの数は乱数を使って毎回別の答えを用意

def countGame
  answer = rand(1..10)
  loop do
    print "入力して下さい。"
    num = gets.to_i
    if num < answer
      puts "正解よりも小さいです。"
    elsif num > answer
      puts "正解よりも大きいです。"
    else num == answer
      puts "正解です。"
      break
    end
  end
end

countGame
