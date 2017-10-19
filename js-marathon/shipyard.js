let spaceShip = require('./spaceship.js');
let CrewMember = require('./CrewMember.js');
let Rocket = require('./Rocket.js');
let goodShip = new spaceShip('Funky Town Express');
let goodRocket = new Rocket();
let crewNames = ['Justin', 'Zach', 'Salami', 'Ace', 'Base'];

let trainCrew =(array)=> {
  trained_crew = [];
  array.forEach((name) => {
  let trained_member = new CrewMember(name, true);
  trained_crew.push(trained_member);
  });
  return trained_crew;
};





let launchpad = (ourShip) => {
  console.log("The " + ourShip.name + " is set for take off!");
  let crewMembers = trainCrew(crewNames);
  ourShip.loadCrew(crewMembers);
  ourShip.captain();
  ourShip.mountPropulsion(goodRocket);
  goodRocket.addFuel(5);
  ourShip.takeOff();
  ourShip.takeOff();
};

launchpad(goodShip);
