# B048:理想のビンゴ
input = gets.chomp.split(' ').map { |s| s.to_i }
bingo_size = input[0] # ビンゴカードの縦・横のサイズを表す整数
call_times = input[1] # 主催者が数字を呼び上げる回数

bingo_matrix = []
bingo_size.times do
  bingo_matrix << gets.chomp.split(' ')
end

(call_times - 1).times do |i| # 呼ばれた数の場所の穴（nil）をあける処理
  bingo_num = gets.chomp
  bingo_matrix.each do |ary|
    if ary.find_index(bingo_num)
      ary[ary.find_index(bingo_num)] = nil
      break
    end
  end
end

answer_ary = [] # 穴の空いていない箇所を、順に仮に穴開けた状態でのビンゴ数の合計を入れる配列
bingo_matrix.each do |ary|
  ary.size.times do |i|
    if !ary[i].nil?
      sum = 0
      ary[i] = nil
      bingo_matrix.each do |ary| # 横列のビンゴ数チェック
        sum += 1 if ary.none?
      end

      bingo_matrix.transpose.each do |ary| # 縦列のビンゴ数チェック
        sum += 1 if ary.none?
      end

      iagonal_right_ary = [] # 斜め(右下がり)のビンゴ数チェック
      bingo_size.times do |i|
        iagonal_right_ary << bingo_matrix[i][i]
      end
      sum += 1 if iagonal_right_ary.none?

      iagonal_left_ary = [] # 斜め(左下がり)のビンゴ数チェック
      bingo_size.times do |j|
        iagonal_left_ary << bingo_matrix[j][bingo_size - j - 1]
      end
      sum += 1 if iagonal_left_ary.none?

      answer_ary << sum
      ary[i] = "done"
    end
  end
end
p answer_ary.max
