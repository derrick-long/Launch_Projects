let reverseString = (word) => {
  let result = '';
  word = word.split('');

  word.forEach((letter) => {
   result = letter + result;
  });
  return result;
};
