# 全ての区間を調査して必要な電球を備え付けた後の並木道の状態を出力するプログラムを作成
# 調査後、区間の木の電球の平均個数が、安全基準 M を満たしていない場合は、平均個数が安全基準を満たすように、その区間の木に均等に電球を追加する
# 1 行目には、並木道に並ぶ木の数を表す整数 N 、区間の電球の平均個数が上回らなければならない数を表す整数 M（安全基準）が与えられる。
# 2 行目には、それぞれの木にいくつ電球が装飾されているかを表す整数 A_i (1 ≦ i ≦ N) が半角スペース区切りで与えられる
# 3 行目には、電球の数を調べたい区間の数を表す整数 Q が与えられる
# 続く Q 行には、電球の数を調べたい区間の始点を表す整数 S_i、終点を表す整数 E_i (1 ≦ i ≦ Q) が半角スペース区切りで与えられる

input_ary = gets.split(' ')
# 木の数
tree = input_ary[0].to_i
# 安全基準の数
security_num = input_ary[1].to_i
# 各木の電球の数
light_of_trees = gets.split(' ').map { |s| s.to_i }
# 調査する回数
survey = gets.to_i

survey.times do |i|
    sum = 0
    average = 0
    from_to = gets.split(' ').map { |s| s.to_i }
    survey_ary = light_of_trees[(from_to[0] - 1)..(from_to[1] - 1)]
    survey_ary.each do |j| # 調査区間の平均値を求める
        sum += j
    end
    average = sum / survey_ary.size
    if average < security_num # 平均値が安全基準より低ければ安全基準との差分を追加
        survey_ary.size.times do |j|
            light_of_trees[(from_to[0] - 1) + j] += (security_num - average)
        end
    end
end

puts light_of_trees.join(' ')