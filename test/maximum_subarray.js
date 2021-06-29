/*
 * @param {number[]} nums
 * @return {number}
 */
var maxSubArray = function(nums) {
  let curr_sum = nums[0];
  let curr_max = curr_sum;
  
  for (let i = 1,len = nums.length; i < len; i++) {
    if ( curr_sum + nums[i] > nums[i]) {
      curr_sum = curr_sum + nums[i];
    } else {
      curr_sum = nums[i];
    }
    if (curr_sum > curr_max) {
      curr_max = curr_sum;
    } else {
      curr_max = curr_max;
    }
  }
  return curr_max;
};
