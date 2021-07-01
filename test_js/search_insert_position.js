/*
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var searchInsert = function(nums, target) {
  if (nums.includes(target)) {
    return nums.indexOf(target);
  } else {
    nums.push(target);
    nums.sort(compareFunc);
    return nums.indexOf(target);
  }
};

function compareFunc(a, b) {
return a - b;
}

/*
もっとコンパクトなやり方(targetが配列の要素と等しい or 大きくなった時の位置を返す)
var searchInsert = function(nums, target) {
  for (let i = 0,length = nums.length; i < length; i++) {
    let cur = nums[i];
    if (cur >= target) {
      return i;
    };
  };
  return length;
};
*/