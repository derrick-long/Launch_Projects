let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', 'It\'s a tiny Launch sticker. How cute!'],
  ['LA-T-SHRIT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png', '100% Cotton. Makes a great gift.']
];

let element = document.getElementById('all-products');
class Product {
  constructor(id,quantity,name,image,description){
    this.id = id;
    this.quantity = quantity;
    this.name = name;
    this.image = image;
    this.description = description;
  }
  sell(){
    return this.quantity - 1;
  }
  toHTML(){
  let  product_template = `<div class="product">
  <h1>Product Name: ${this.name}</h1>
  <h5>${this.quantity} In Stock</h5>
  <img src=${this.image}/>

  <h3>Description</h3>
  <p>
    ${this.description}
  </p>
  </div>`;
  return product_template;
  }
}




makeProducts = (item) => {
  let product = new Product(...item);
    return product;
  };

let finishedInventory = inventory.map(makeProducts);

finishedInventory.forEach((product) => {
  element.innerHTML += product.toHTML();
});
//
// toHTML returning undefined, usual approach not working do some googling
// need to create elements
// add stuff to them
// then append all that stuff to the existing all products div on the webpage
