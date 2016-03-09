require './prices'

class Play
  prices = [3.99, 25.00, 8.99]

  calc = Prices.new

  puts format('%.2f', calc.total(prices))
  puts format('%.2f', calc.refund(prices))
  calc.show_discount(prices)

end

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