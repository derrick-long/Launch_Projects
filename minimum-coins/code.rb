#YOUR CODE GOES HERE
#values #1, 5, 10, 25, 100 probably want to use modulo? or just straight division

def minimum_coins(amount)
  coins = [100,25,10,5,1]
  coin_count = 0
  coins.each do |coin|
    if amount/coin > 0
    current_coins = amount/coin
    amount = amount - (coin * current_coins)
    coin_count += current_coins
    end
  end
  coin_count
end
