/*
 * 与えられた配列の要素の中で、最も長い共通の接頭語を返すプログラム
 * @param {string[]} strs
 * @return {string}
 */

var longestCommonPrefix = function(strs) {
    
  let prefix = '';
  let preprefix = '';
  
  for(let i = 0; i < strs[0].length; i++) {
    prefix += strs[0][i];
    for(let j = 0; j < strs.length; j++) {
      if (!strs[j].startsWith(prefix)) {
        return preprefix;
      }
    }
    preprefix = prefix;
  }
  return preprefix;
}
