# フィボナッチ数列の第n項を求めるプログラム(再帰呼出しVer)
def fibonacci(n)
  return n if n < 2
  fibonacci(n - 2) + fibonacci(n - 1)
end

puts "フィボナッチ数列の第n項を求めます"
print "nをいくつにしますか？ : "
n = gets.to_i
answer = fibonacci(n)
puts "フィボナッチ数列の第#{n}項の数は#{answer}です"