class Product
  attr_accessor :price, :rating, :color, :sales

  def initialize(price: 10, rating: 1, color: :green, sales: 2251)
    self.price = price
    self.rating = rating
    self.color = color
    self.sales = sales
  end
end