class Changer
  def change(amount)
    return_amount = []
    [20, 10, 5, 1].each do |coin|
      return_amount << [coin] * (amount / coin) if amount >= coin
      amount = amount - (coin * (amount / coin))
    end

    return_amount.flatten
  end
end