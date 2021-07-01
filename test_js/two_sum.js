// 数字の配列（nums）と 整数（target）が与えられる, 足すとtargetと等しくなる2つの数字の添字を返すプログラム
// @param {Integer[]} nums
// @param {Integer} target
// @return {Integer[]}

var twoSum = function(nums, target) {
  let list=[];
  for(let i=0, len = nums.length;i<len;i++){
    for (let j = i + 1, l = nums.length; j<l; j++) {
      if( nums[i] + nums[j] == target){
        list.push(i,j);
        return list;
      }
    }
  }
};
