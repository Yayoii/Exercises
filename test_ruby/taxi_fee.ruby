#タクシーの料金を求めて、最安値と最高値を出力するプログラム
# 入力：N(タクシーの種類数)、X(目的地までの距離)、a_1(初乗り距離)、b_1(初乗り料金)、c_1(加算距離)、d_1(加算料金)
# N X
# a_1() b_1() c_1() d_1()
# a_2() b_2() c_2() d_2() 〜 a_N() b_N() c_N() d_N()

def taxi_fee
input_line1 = gets.split(" ")
n = input_line1[0].to_i
destination_dis = input_line1[1].to_i

fee_ary = []
n.times do |i|
  input_line = gets.split(" ") #2回目以降の入力値を受ける
    ary = []
    4.times do |j|
        ary << input_line[j].to_i
    end
    fee = 0
    if ary[0] > destination_dis
        fee = ary[1]
    else
        diff = destination_dis - ary[0]
        fee = ary[1] + ( diff.div(ary[2]).floor + 1 ) * ary[3]
    end
    p fee_ary << fee
end
min = fee_ary.min_by
max = fee_ary.max_by
puts "#{min} #{max}"
end

taxi_fee