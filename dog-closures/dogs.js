let dogTalk = (talk_type) => {
  let commonDogName = 'Rover';
  let unCommonDogName = 'Susan';
let stateDogNameOpinion = () => {
  return `I believe ${commonDogName} is an excellent dog name. The name ${unCommonDogName} is a bad dog name.`;
};

let stateDogNameFact = () => {
  return `I have never met a dog named ${unCommonDogName}; while several dogs are named ${commonDogName}`;
};

let callDogs = () => {
  return `Hey, come here ${commonDogName} and ${unCommonDogName}`;
};
  if (talk_type == 1) {
    return stateDogNameOpinion;
  } else if (talk_type == 2){
    return stateDogNameFact;
  } else if (talk_type == 3){
      return callDogs;
    }
};

let dog_test_1 =  dogTalk(1);
let dog_test_2 = dogTalk(2);
let dog_test_3 = dogTalk(3);
dog_test_1();
dog_test_2();
dog_test_3();




let butt = dogTalk();
