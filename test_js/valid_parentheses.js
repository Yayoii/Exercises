/*
 * @param {string} s
 * @return {boolean}
 */
function isValid(s) {
  const parentheses = { '(': ')', '{': '}', '[': ']' };
  let stack = [];
  
  for(let i = 0; i < s.length; i++) {
    if (s[i] === '(' || s[i] === '{' || s[i] === '[') {
      stack.push(s[i]);
    } else {
      let pop = stack.pop();
      if (parentheses[pop] !== s[i]) {
        return false;
      }
    }
  }
  
  if (stack.length != 0) {
    return false;
  }
  return true;
}