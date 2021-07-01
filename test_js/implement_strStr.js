/*
 * @param {string} haystack
 * @param {string} needle
 * @return {number}
 */

/*
 * メソッドを使った方法
var strStr = function(haystack, needle) {
  if (haystack || needle) {
    let answer = haystack.indexOf(needle);
    return answer;  
  } else {
    return 0;
  }
};
*/

var strStr = function(haystack, needle) {
  if (haystack && needle) {
    for (let i = 0, len = haystack.length; i < len; i++) {
      if (haystack[i] == needle[0]) {
        if (haystack.substring(i, i + needle.length) == needle) {
          return i;
        }
      }
    } return -1;
  } else if (!needle) {
    return 0;
  } else {
    return -1;
  }
};