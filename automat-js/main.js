let dishes = ['Chicken Pot Pie', 'Baked Beans', 'Macaroni and Cheese', 'Burgundy Sauce with Beef and Noodles','Creamed Spinach','Pumpkin Pie', 'Strawberry Shortcake'];

bigDiv = document.getElementById('main');



dishes.forEach((dish) => {
  let foodDiv = document.createElement('div');
  foodDiv.className = 'food-item';
  foodDiv.innerHTML = dish;
  bigDiv.appendChild(foodDiv);
  foodDiv.addEventListener('click', () => { foodDiv.className += ' hidden'} );
});
