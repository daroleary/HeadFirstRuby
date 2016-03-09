require './promotion'

# currying involves creating a named lambda using '->'
# applying the parameters to it (p-1) via 'curry'
# execute lambda whilst calling final parameter
# e.g.
#      calc = -> a, b, c { c + (a * b) }
#      plus_two = calc.curry[1, 2]
#      plus_two[10] ~ 12

class Promotions

  discount_by_15_pc = Promotion.new(
      '15% off everything',
      -> total { total * 0.15 }
  )

  p discount_by_15_pc

  calc = -> threshold, discount, total do
    total > threshold ? total * discount : 0
  end

  # when > 50 apply discount
  ten_pc_calc = calc.curry[50, 0.1]

  # when > 100 apply discount
  fifteen_pc_calc = calc.curry[100, 0.15]

  p ten_pc_calc[45] # 45 < 50 ~ 0 discount
  p ten_pc_calc[100] # 100 > 50 ~ 10.0 discount
  p fifteen_pc_calc[145] # 145 > 145 ~ 21.75 discount

  ten_pc = Promotion.new(
      '10% if you spend over $50',
      ten_pc_calc
  )

  fifteen_pc = Promotion.new(
      '15% if you spend over $100',
      fifteen_pc_calc
  )

  p ten_pc.apply(100)
  p fifteen_pc.apply(150)

end