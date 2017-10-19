class spaceShip{
  constructor(name,crew =[]){
    this.name = name;
    this.crew  = crew;
    this.propulsion = null;
  }
  loadCrew(new_crew_array){
    new_crew_array.forEach((member) => {
      this.crew.push(member);
    console.log ('Welcome aboard ' + member.name + '!');
  });
  }
  captain(){
    let number = this.crew.length;
    let random_index = Math.floor(Math.random() * number);
    let captain_name = this.crew[random_index].name;
    console.log('The captain for this flight will be: ' + captain_name);

  }
  mountPropulsion(propulsion){
    this.propulsion = propulsion;
    console.log('Propulsion mounted, boys!');
  }
  takeOff(){
    if(this.propulsion.fire() === true){
      console.log('BRSSHORNMMMMMMBRUSHSUHOOOM!');
    }else{
      console.log('Take off was unsuccessful :(');
    }
  }
}

module.exports = spaceShip;
