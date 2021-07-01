/*
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function(s) {
  if (!s.length) {
    return 0;
  }
  const words = s.trim().split(' '); // trim()は文字列の両端の空白を削除するメソッド
  return words.pop().length;
};