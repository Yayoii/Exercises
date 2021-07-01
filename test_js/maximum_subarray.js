/*
 * @param {number[]} nums
 * @return {number}
 */
var maxSubArray = function(nums) {
  let sum = nums[0];
  let max = sum;
  
  for (let i = 1,len = nums.length; i < len; i++) {
    sum = (sum + nums[i] > nums[i]) ? (sum + nums[i]) : nums[i];
    max = (sum > max) ? sum : max;
  }
  return max;
};
