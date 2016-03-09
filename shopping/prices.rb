class Prices

  def total(prices)
    amount = 0
    prices.each do |price| # block
      amount += price
    end
    amount
  end

  def refund(prices)
    amount = 0
    prices.each do |refund|
      amount -= refund
    end
    amount
  end

  def show_discount(prices)
    prices.each do |price|
      amount_off = price / 3.0
      puts format('Your discount: $%.2f', amount_off)
    end
  end

end