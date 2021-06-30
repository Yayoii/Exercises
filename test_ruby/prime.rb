def prime?(num)
  (2...num).each { |i| return false if num % i == 0 }
  true
end

(1..100).each { |i| p i if prime?(i)}