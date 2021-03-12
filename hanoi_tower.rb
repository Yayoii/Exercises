# 出力は円盤の移動の記録及び手数

def hanoi(num, left, center, right)
  if num == 1
    puts "#{left} から #{center}"
  else
    hanoi(num-1, left, right, center)
    puts "#{left} から #{center}"
    hanoi(num-1, right, center, left)
  end
end

def how_many(n)
  puts (2**n)-1
end


hanoi(3, "左", "真ん中", "右")
how_many(3)
