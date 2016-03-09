require './steak'

class Play

  prime = Steak.new
  prime.grade = 'Prime'
  choice = Steak.new
  choice.grade = 'Choice'
  select = Steak.new
  select.grade = 'Select'

  puts "prime > choice: #{prime > choice}"
  puts "prime < choice: #{prime < choice}"
  puts "select == select: #{select == select}"
  puts "select <= select: #{select <= select}"
  puts "select >= choice: #{select >= choice}"
  print 'choice.between?(select, prime): '
  puts choice.between?(select, prime)
end