class House < Dwelling
attr_reader :asking_price

  def initialize(address,city,state,zip)
    super
    @asking_price = 0
  end

  def set_price(price)
    @asking_price = price
  end



end
