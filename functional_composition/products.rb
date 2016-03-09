class Products

  include Enumerable

  attr_accessor :products

  def initialize(products)
    self.products = products
  end

  def each
    products.each do |product|
      yield product
    end
  end
end