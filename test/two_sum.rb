# 数字の配列（nums）と 整数（target）が与えられる, 足すとtargetと等しくなる2つの数字の添字を返すプログラム
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  i = 0
  j = nums.length - 1
  
  nums = nums.each_with_index.map{|x,i| [x, i]}.sort # 要素と添字の配列を作ったあとに降順に並べ替え
  while true do
    total = nums[i].first + nums[j].first
    if total == target
      return [nums[i].last, nums[j].last]
    elsif total > target
      j -= 1
    else
      i += 1
    end
  end
end