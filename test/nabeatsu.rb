# ３の倍数と３のつく数字のときだけアホになる
def nabe(n)
  puts n % 3 == 0 || n.to_s.include?("3") ? "Aho" : n
end

(1..100).each { |i| nabe(i) }