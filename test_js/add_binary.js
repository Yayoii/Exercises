/*
 * @param {string} a
 * @param {string} b
 * @return {string}
 */

var addBinary = function(a, b) {
  let alen = a.length - 1;
  let blen = b.length - 1;
  let carry = 0;
  let str = "";
  
  while (alen >= 0 || blen >= 0) {
      const digA = alen < 0 ? 0 : parseInt(a.charAt(alen--));
      const digB = blen < 0 ? 0 : parseInt(b.charAt(blen--));
      
      const sum = digA + digB + carry;
      const dig = sum % 2;
      
      carry = sum > 1 ? 1 : 0;
      str = dig + str;
  }
  
  if (carry == 1) str = carry + str;
  
  return str;
};