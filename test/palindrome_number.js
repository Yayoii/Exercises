// 与えられた数字が前から読んでも後ろから読んでも同じであればtrueを返す。それ以外はfalseを返す。
// @param {number} x
// @return {boolean}

var isPalindrome = function(x) {
  let reversedInt = x.toString().split('').reverse().join('');
  return x == reversedInt ? true : false;
};
