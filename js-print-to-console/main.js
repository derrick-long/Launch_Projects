let number = 42;
console.log(number);

let myName = 'Derrick Long';
console.log(myName);

let reverseString = (word) => {
  let result = '';
  word = word.split('');
  console.log(word);
  word.forEach((letter) => {
  result = letter + result;
  console.log(result);
  });
  return result;
};

console.log(reverseString("butt"));
