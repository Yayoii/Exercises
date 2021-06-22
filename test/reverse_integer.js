// 与えられた数字を逆順に並べ替えて返す（[-2**31, 2**31 - 1]の範囲の範囲外ならば 0 を返す）
// @param {number} x
// @return {number}

var reverse = function(x) {
  let stringInt = parseInt(x.toString().split('').reverse().join(''));
  if (x<0) {
      stringInt *= -1;
  }
  return (stringInt > -1*Math.pow(2,31) && stringInt < Math.pow(2,31)-1) ? stringInt : 0;
};