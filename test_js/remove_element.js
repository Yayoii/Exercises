/*
 * 指定の整数（val）を取り除いたリストを作る。しかし、返すのはリストの長さで。リストの中身自体も変化させる。（別オブジェクトで作り直すのはNG）
 * @param {number[]} nums
 * @param {number} val
 * @return {number}
 */

var removeElement = function(nums, val) {
  const len = nums.length;

  for (let i = 0; i < len; i++) {
    if(i > nums.length - 1) {
      break;
    }
    if (nums[i] === val) {
      nums.splice(i, 1);
      i--;
    }
  }
  return nums.length;
};