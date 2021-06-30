class Num
def remove_duplicates(num)
  len = num.length
  len.times do |i|
    num[i] = nil if num[i] == num[i + 1]
  end
  p num
end
end


a = Num.new
a.remove_duplicates([1,1,2,2,2,2,3])
