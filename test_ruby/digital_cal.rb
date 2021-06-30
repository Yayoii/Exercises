length = gets.to_i

num_to_ary = {
  0 => "*|=|****", 1 => "*|=*|***", 2 => "*|=**|**", 3 => "*|=***|*", 4 => "*|=****|",
  5 => "|*=|****", 6 => "|*=*|***", 7 => "|*=**|**", 8 => "|*=***|*", 9 => "|*=****|"
  }

def calculator()
  ary_to_num = {
  "*|=|****" => 0, "*|=*|***" => 1, "*|=**|**" => 2, "*|=***|*" => 3, "*|=****|" => 4,
  "|*=|****" => 5, "|*=*|***" => 6,"|*=**|**" => 7, "|*=***|*" => 8, "|*=****|" => 9
  }
  abacus_row = []
  num_ary = []
  abacus_heigh = 8
  
  abacus_heigh.times do
    abacus_row << gets.chomp.split('')
  end
  abacus_row.transpose.each do |ary|
    num_ary << ary_to_num[ary.join]
  end
  num_ary.join
end

answer = calculator().to_i + calculator().to_i
answer_ary = []
answer.to_s.each_char do |s|
  answer_ary << num_to_ary[s.to_i].split('')
end

answer = answer_ary.transpose
answer.each do |a|
  puts a.join
end