/*
 * 与えられた数字をローマ数字に変換するプログラム。
 * 注意点 4はIIIIではなくIV、同じ原理で9はIXのように表現される。
 * @param {number} num
 * @return {string}
 */

var romanToInt = function(s) {
  const map = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 };
  let sum = 0;
  let result = s.match( /CM|CD|XC|XL|IX|IV/g ); // CM|CD|XC|XL|IX|IVが含まれていた場合は先に計算して後で取り除く
  if (result) {
    result.forEach( item => { sum += map[item] });
  }
  let replaced = s.replace(/CM|CD|XC|XL|IX|IV/g,'');
  const sAry = replaced.split('');
  sAry.forEach( item => { sum += map[item] });
  return sum;
};

