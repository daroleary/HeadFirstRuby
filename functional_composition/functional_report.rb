require './products'

class FunctionalReport

  sum = -> list { list.inject(&:+) } # add latest value to running total

  sales_value = -> products do
    product_revenue = products.map { |product| product.sales * product.price}
    sum[product_revenue]
  end

  total_sales = -> products { sum[products.map(&:sales)] } # sum all product sales

  avg_sale_price = -> products { sales_value[products] / total_sales[products] }

  avg_sale_price[PRODUCTS] # => 44

  red = -> products { products.select { |p| p.color == :red } }
end