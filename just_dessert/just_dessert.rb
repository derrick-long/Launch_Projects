require 'pry'
#should allow you to bake trays of cookies with cook_batch! method
#method takes 2 args, type of cookie and cookies baked
#this should increase the inventory for cookie type baked
class CookieInventory


  def initialize
    @peanutbutter = 0
    @sugar = 0
    @chocolate_chip = 0
    @cookie_hash = {peanut_butter: 0, sugar: 0, choco: 0}
  end

  def cook_batch!(fresh_cookie_type, fresh_cookie_number)
    if @cookie_hash.include?(fresh_cookie_type)
      @cookie_hash[fresh_cookie_type] += fresh_cookie_number
    end
  end

  def sell!(cookie_type, cookie_number)
    if @cookie_hash.include?(cookie_type)
      if @cookie_hash[cookie_type] <= 0
      puts "Sold Out"
      else
        @cookie_hash[cookie_type] -= cookie_number
      end
    end
  end
end



binding.pry
