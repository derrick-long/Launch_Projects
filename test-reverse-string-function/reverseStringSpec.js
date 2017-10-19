describe('reverseString', () => {

    it("should return a string when given one",() => {
      let a = "stuff";
      expect(reverseString(a)).toEqual(jasmine.any(String));
    });


      it("should return the reverse of a string", () => {
      let a = "abc";
      expect(reverseString(a)).toBe("cba");
    });
  });
