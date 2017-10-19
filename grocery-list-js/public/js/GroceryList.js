class GroceryList{
    constructor(title,date){
      this.title = title;
      this.date = date;
      this.items = [];
    }
  addItem(item){
    this.items.push(item);
    return(this.items);
  }
  toHTML(){
    let  list = '';
    this.items.forEach((item) => {
       list += '<li>' + item + '</li> \n';
       return list;
     });
    let html =  '<h1>' + this.title + '</h1>' + '\n' + '<ul>\n' + list + '</ul>';
    return html;
  }
}
