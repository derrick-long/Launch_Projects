let answer = prompt('At what temperature on the Celcius scale does water freeze?');

let resultDiv = document.getElementById('result');

if (answer != -10) {
  resultDiv.innerHTML = 'Sorry but that is not the right answer.';
} else {
  resultDiv.innerHTML = 'You got it right, champ!';
}
