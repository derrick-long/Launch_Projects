describe("Product", () => {
  describe("new Product()",() => {
    it("takes in an id as an arugment",() => {
      let product = new Product('LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.');
      expect(product).toBeDefined();
      expect(product.id)toBe('LA-LG-STICKER');
    });
  });
});
