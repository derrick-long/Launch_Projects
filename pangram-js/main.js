// test the isPangram() function, and print results to the console.
function onlyUnique(value, index, self) {
    return self.indexOf(value) === index;
}



let alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g','h','i', 'j', 'k', 'l','m','n','o','p','q','r','s','t',
'u', 'v', 'w', 'x', 'y', 'z'];

let isPangram = (sentence) => {
  tally = 0;
  sentence = sentence.toLowerCase();
  sentence = sentence.split('');
  sentence = sentence.filter(onlyUnique);
  sentence.forEach((letter) => {
    alphabet.forEach((alphaletter) => {
      if (letter == alphaletter){
        tally += 1;
      }
    });
  });
  if (tally == 26){
    return true;
  } else {
    return false;
  }

};


let sentences = [
  { content: 'The quick brown fox jumps over the lazy dog.', pangram: true },
  { content: 'The quick onyx goblin jumps over the lazy dwarf.', pangram: true },
  { content: 'Grumpy wizards make toxic brew for the evil queen and jack.', pangram: true },
  { content: 'Not a pangram', pangram: false },
  { content: '', pangram: false },
];

sentences.forEach((sentence) => {
  let result = isPangram(sentence.content);
  let correct = (result == sentence.pangram);
  console.log(`isPangram gave a ${correct ? '' : 'in'}correct result for: ${sentence.content}`);
});


// define the isPangram() function
