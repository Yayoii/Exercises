/*
 * 再起関数
 * @param {number[]} nums
 * @return {number[][]}
 */

const permute = function(nums) {
  let temp = [];
  let result = [];
  findPermutations(temp, nums, result);
  return result
};

const findPermutations = function(temp, nums, result) {

  // num配列が空になったら返す
  // concat()をすることで今のtemp配列を参照したものを返せるようになる。元の配列は他で修正しているので返さない。
  if(!nums.length) {
    result.push(temp.concat());
    return;
  }

  for (let i = 0; i < nums.length; i++) {
    let newNum = nums[i];
    temp.push(newNum);
    nums.splice(i, 1);
    findPermutations(temp, nums,result);
    // 次の反復の前にtempとnumsをリセットする
    temp.pop();
    nums.splice(i, 0, newNum);
  }
};

