require './report'
require './product'
require './products'

class RunReport

  product = Product.new(price: 10, rating: 1, color: :green, sales: 2251)
  products = Products.new([product])

  report = Report.new(products)
  p report.run

end

