process.stdin.resume();
process.stdin.setEncoding('utf8');
let lines = [];
let answer_ary = [];
let reader = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
reader.on('line', (line) => {
  lines.push(line);
});
reader.on('close', () => {
  let num = lines[0]; //入力される文字入力回数
  let correct_word = lines[1]; //判定用の文字
  for (let i = 0, len = num; i < len; i++) {
    let word = lines[i + 2];
    if (word.includes(correct_word)) {
        answer_ary.push(word);
    }
  }
  if (answer_ary.length === 0) {
  console.log('None');
  } else {
    for (let j = 0, le = answer_ary.length; j < le; j++) {
    console.log(answer_ary[j]);
  }
  }
});
