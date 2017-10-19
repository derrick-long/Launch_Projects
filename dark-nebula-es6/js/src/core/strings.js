reduceString = (str, amount) => {
reduced = '';
tracker = 1;

for(let i = 0; i < str.length; i++){
  if(str[i] != str[i + 1]){
    reduced =  reduced + str[i];
    tracker = 1;
  } else if (str[i] == str[i + 1] && tracker != amount){
    reduced = reduced + str[i];
    tracker += 1;
  }
}
  return reduced;
};


reverseString = (str) => {
  let reversedword = '';
  str = str.split('');
  str.forEach((letter) =>{
  reversedword = letter + reversedword;
});
  return reversedword;
};
