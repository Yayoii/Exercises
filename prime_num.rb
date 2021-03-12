include Math

class Practice

  def prime_num(num)
    if num < 2
      return false
    elsif num == 2
      return num
    elsif num%2 == 0 #偶数は予め除く
      return false
    end

    sqrtNum = sqrt(num)
    i = 3
    while  i <= sqrtNum do
      if num % i == 0
        return false
      else
        i += 2
      end

    end
    puts num
    
  end
end
  
  practice = Practice.new
  (1..15).each{|n| practice.prime_num n }
