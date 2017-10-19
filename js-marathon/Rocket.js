class Rocket{
  constructor(fuel = 0){
  this.fuel = fuel;
}
  addFuel(amount){
    this.fuel += amount;
    console.log(this.fuel);
  }
  fire(){
    if (this.fuel > 0){
      this.fuel -= 1;
      console.log('The rockets have been fired! There is: ' + this.fuel + ' fuel remaining!');
      return true;
    }else{
      console.log('The rockets have failed to fire! OH NO');
    }return  false;

  }
}

module.exports = Rocket;
