# フィボナッチ数列の第n項を求めるプログラム

def fibonacci(n)
  fibo_array = [0, 1]
  if n == 0
    fibo_array[0]
  elsif n == 1
    fibo_array[1]
  else
    (n-1).times do |i|
      fibo_array.push(fibo_array[i] + fibo_array[i + 1])
    end
    fibo_array[n]
  end
end

puts "フィボナッチ数列の第n項を求めます"
print "nをいくつにしますか？ : "
n = gets.to_i
answer = fibonacci(n)
puts "フィボナッチ数列の第#{n}項の数は#{answer}です"