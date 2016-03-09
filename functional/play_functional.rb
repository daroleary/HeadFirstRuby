require './functional'

class PlayFunctional

  discount = Proc.new do |price|
    price - (price * 0.15)
  end

  tax = Proc.new do |price|
    price + (price * 0.2)
  end

  func = Functional.new
  prices = [100, 75, 90, 80, 50]

  p 'Call our own map function'

  p func.map(prices, discount)
  p func.map(prices, tax)

  p "Call ruby's own map method & pass proc"

  # utilizing ruby's own Enumerator::map instead, pass in function using ampersand '&'
  p prices.map(&discount)
  p prices.map(&tax)

  p "Call ruby's own map method and use block instead of proc"

  # by using a block, we don't need to specify a 'proc'
  discounts = prices.map do |price|
    price - (price * 0.15)
  end

  taxes = prices.map do |price|
    price + (price * 0.2)
  end

  p discounts
  p taxes
end