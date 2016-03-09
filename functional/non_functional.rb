class NonFunctional

  def apply_discount(prices)
    discounted_prices = []
    prices.each do |price|
      reduced_price = price - (price * 0.15) # take 15% off
      discounted_prices << reduced_price
    end
    discounted_prices
  end

  def add_tax(prices)
    prices_with_tax = []
    prices.each do |price|
      prices_with_tax << price + (price * 0.2)
    end
    prices_with_tax
  end

  def get_prices
    [100, 75, 90, 80, 50]
  end

  def run_all
    p apply_discount(get_prices)

    p add_tax(get_prices)
  end
end