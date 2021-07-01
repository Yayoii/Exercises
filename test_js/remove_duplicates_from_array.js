/*
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function(nums) {
  for (let i = 0, len = nums.length; i < len; i++) {
    if (i > nums.length - 1) {
      break;
    }
    if (nums[i] === nums[i + 1]) {
      nums.splice(i,1);
      i--
    }
  }
  return nums.length
};