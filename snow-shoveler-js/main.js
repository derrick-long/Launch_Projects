let price = 0;

let depth = prompt('How many inches deep was the snow on your driveway?');

let length = prompt('How long is your driveway in feet?');

let width = prompt('How wide is your driveway in feet?');

let squareFeet = width * length * depth / 12.00;
console.log(squareFeet);

if (Math.round(squareFeet) <= 49) {
     price = 20;
} else if  (Math.round(squareFeet) <= 149){
    price = 50;
} else if (Math.round(squareFeet) <=  299){
    price = 100;
} else {
  price = 150;
}

window.alert('Your total is calculated at: ' + price + ' dollars!');
