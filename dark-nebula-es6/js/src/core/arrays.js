removeWithoutCopy = (arr, item) => {
  for(let i = 0; i < arr.length; i++) {
    let member = arr[i];
    if (member == item){
      arr.splice(i, 1);
      i = i - 1;
    }
  }
  return arr;
};

append = (arr, item) => {
  arr.push(item);
  return arr;
};

truncate = (arr) => {
 arr.pop();
 return arr;
 };

prepend = (arr, item) => {
  arr.unshift(item);
  return arr;
};

curtail = (arr) => {
  arr.splice(0, 1);
  return arr;
};

concat = (arr1, arr2) => {
  let arr3 = arr1.concat(arr2);
  return arr3;
};

insert = (arr, item, index) => {
  arr.splice(index,0,item);
  return arr;
};

count = (arr, item) => {
  let tracker = 0;
  arr.forEach((member) => {
    if (member == item){
      tracker += 1;
    }
  });
  return tracker;
};

duplicates = (arr) => {
  let   sorted_arr = arr.sort();
  let results = [];
  for (let i = 0; i < arr.length - 1; i++){
    if (sorted_arr[i + 1] == sorted_arr[i]){
      results.push(sorted_arr[i]);
      for (let x = 0; x < results.length; x++){
        if(results[x] == results[x+1]){
          results.pop();
        }
      }
    }
  }
  return results;
};



square = (arr) => {
  arr = arr.map((num) => {
    return num * num;
  } );

  return arr;
};

findAllOccurrences = (arr, item) => {

    let  tracker = [];
    for(let i = 0; i < arr.length; i++) {
      let member = arr[i];
      if (member == item){
        tracker.push(i);
      }
    }
      return tracker;
};
