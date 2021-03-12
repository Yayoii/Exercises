def squareRoot(num)
  lower = 0 #下限
  upper = num #上限
  while upper - lower > 1e-10 do
    m = (lower + upper)/2.00000
      if m * m  < num 
        lower = m;
      else
        upper = m;
      end
  end
  p m
end

squareRoot(2.5)