let reverseString = (word) => {
  let result = '';
  word = word.split('');

  word.forEach((letter) => {
   result = letter + result;
  });
  return result;
};


let words = ['racecar', 'Andy', 'boolean', 'redrum'];
let reversedWords = ['racecar', 'ydnA', 'naeloob', 'murder'];

for (let i = 0; i < words.length; i++) {
  let word = words[i];
  let reversedWord = reverseString(word);
  let result = (reversedWord == reversedWords[i]);

  let outputString = `The reverse of ${word}`+ '" is: ';
  outputString += `${reversedWord}`;
  outputString += '\n' + result + '\n\n';

  console.log(outputString);
}
