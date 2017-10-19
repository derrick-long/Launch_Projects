dishes = ["Roasted Brussels Sprouts", "Truffle Salt Burrito", "Vegan Philly Style Cheese Steak", "Fresh Brussels Sprouts Soup", "Split Pea Pizza with Cherry Tomatoes and Chocolate Shavings", "Brussels Sprouts with Toasted Breadcrumbs, Parmesan, and Lemon", "Cheesy Maple Roasted Brussels Sprouts and Broccoli with Dried Cherries", "Parmesan Toast with Green Onions and Thyme", "Hot Cheesy Roasted Brussels Sprouts Dip", "Gazpacho with Lime and Potato Sauce", "Pomegranate Roasted Brussels Sprouts with Red Grapes and Farro", "Roasted Brussels Sprouts and Red Potato Salad", "Smoked Gouda and Poppy Seed Crackers", "Smoky Buttered Brussels Sprouts", "Margherita Pizza with Mushrooms and Cantaloupe", "Orange Glazed Vegan Chicken Cutlet", "Sweet and Spicy Roasted Brussels Sprouts", "Smoky Buttered Brussels Sprouts", "Jelly Bean Ice Cream", "Brussels Sprouts and Egg Salad with Hazelnuts"];
goodDishes = [];
badDishes = [];

dishes.forEach((dish) => {
  if(dish.includes("Brussels Sprouts")){
    goodDishes.push(dish);
  } else {
    badDishes.push(dish);
  }

});

let button = document.getElementById("click-for-more");

let dishList = document.getElementById("dishes");

let addDishes =()=>{ goodDishes.forEach((dish) => {

  dishList.innerHTML += ('<li>'+ dish + '</li>');
});
};

button.addEventListener('click', addDishes);
