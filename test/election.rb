input_line = gets.split(' ')
# 立候補者の数
candidate = input_line[0].to_i
# 有権者の数
voter = input_line[1].to_i
# 演説の数
speech = input_line[2].to_i

speech_order = []
speech.times do 
  speech_order << gets.chomp.to_i # =>[1, 1, 2, 3]
end

candidate_ary = []
candidate.times do
  candidate_ary << [] # =>[[], [], []]
end

voter_ary = []
voter.times do |i|
  voter_ary << i # =>[0, 1, 2]
end

speech.times do |e|
  candidate.times do |c|
    if speech_order[e] == c+1 #candidate_aryの添字+1 を立候補者の番号とみなす
      candidate_ary[c] << voter_ary.shift unless voter_ary.empty?
      candidate.times do |d|
        unless candidate_ary[d].empty?
          next if d == c
          candidate_ary[c] << candidate_ary[d].pop
        end
      end
    end
  end
end

max_ary = candidate_ary.max {|a, b| a.size <=> b.size }
max_ary_equal = candidate_ary.select{ |v| v.size == max_ary.size }
max_ary_equal.each do |ary|
  puts "最も支持者の多い立候補者の番号は#{candidate_ary.index(ary) + 1}です。"
end
