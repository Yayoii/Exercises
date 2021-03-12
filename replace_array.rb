# 配列の先頭はそのままに、先頭以外の要素をすべて0に置き換える
def replace_array(input)
  array = input.to_s.split("")
  array[0] = array[0].to_i
  (1..array.size-1).each do |i|
    array[i] = 0
  end
  print array
end

replace_array(568934876)