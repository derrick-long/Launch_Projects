isPrime = (num) => {
  for(let i = 2; i < num;i++){
    if(num % i === 0){
      return false;
    }
    else {
    return true;
  }
}
};

arraySum = (array) => {
    let sum = 0;
    for(let i = 0; i < array.length; i++){
      sum =  sum + array[i];
    }
    return sum;
};

fizzBuzz = (num) => {
    if (num === null){
      return null;
    }
    else if (num % 3 === 0 && num % 5 !== 0){
    return 'fizz';
  } else if(num % 5 === 0 && num % 3 !== 0){
    return 'buzz';
  } else if (num % 5 === 0 && num % 3 === 0){
    return 'fizzbuzz';
  } else {
    return num;
  }
};
