#  aをn回かけるループ文
def exponentiation(a,n)
  sum = 1
  n.times do |i|
  sum *= a
  end
  sum
end

print exponentiation(2,1000007) #(2, 1000007) => 70.635 sec