containsNumber = (string) => {
  let regex = /[0-9]+/g;
  let found = string.match(regex);
  if (found !== null){
    return true;
  } else {
    return false;
  }
};

containsRepeatingLetter = (string) => {
 let regex = /([a-zA-Z]).*?\1/;
 let found = string.match(regex);
 if (found !== null){
   return true;
 } else {
   return false;
 }
};

endsWithVowel = (string) => {
 let regex = /['aeiouAEIOU']$/;
 let found = string.match(regex);
 if (found !== null){
   return true;
 } else {
   return false;
 }
};

captureThreeNumbers = (string) => {
let regex = /\d{3}/;
let found = string.match(regex);
  if (found !==null){
    return found.toString();
  }else{
    return false;
  }
};

matchesPattern = (string) => {
  let regex =  /^(\()?\d{3}(\))?(-|\s)?\d{3}(-|\s)\d{4}$/;
  let found = string.match(regex);
  if (found !== null){
    return true;
  } else {
    return false;
  }

};

isUSD = (string) => {
  let regex = /^\${1}\d+(,\d{3})*\.?([0-9]{0}|[0-9]{2})?$/;
  let found = string.match(regex);
  if (found !== null){
    return true;
  } else {
    return false;
  }
};
