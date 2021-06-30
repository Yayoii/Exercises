def input_matrix(ary)
  # 新しい配列を作ってそこに入れていく
  # second_ary = Array.new(3).map{Array.new(3)}
  second_ary = [[],[],[]]
  (0..2).each do |i|
    (0..2).each do |j|
      second_ary[i][j] = ary[j][i]
    end
  end
  # # 0行目の代入
  # print second_ary[0][0] = ary[0][0]
  # print second_ary[0][1] = ary[1][0]
  # print second_ary[0][2] = ary[2][0]
  # print "\n"
  # # 1行目の代入
  # print second_ary[1][0] = ary[0][1]
  # print second_ary[1][1] = ary[1][1]
  # print second_ary[1][2] = ary[2][1]
  # print "\n"
  # # 2行目の代入
  # print second_ary[2][0] = ary[0][2]
  # print second_ary[2][1] = ary[1][2]
  # print second_ary[2][2] = ary[2][2]
  second_ary
end


newary = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p input_matrix(newary)