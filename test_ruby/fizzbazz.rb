
class Practice

  def fizz_bazz(i)
    output = i % 3 == 0 ? 'FIZZ' : ''
    output += i % 5 == 0 ? 'Bazz' : i.to_s
    puts output
  end
end

practice = Practice.new
puts (1..100).each{|n| practice.fizz_bazz n }
