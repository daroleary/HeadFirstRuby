class Steak

  # ruby own Comparable module, by including it all instances of Steak are comparable
  include Comparable

  GRADE_SCORES = {'Prime' => 3, 'Choice' => 2, 'Select' => 1}

  attr_accessor :grade

  # < => aka 'spaceship' operator
  # returns -1 if less, 1 is greater & 0 if equal
  def <=>(other)
    if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
      -1
    elsif GRADE_SCORES[self.grade] > GRADE_SCORES[other.grade]
      1
    else
      0
    end
  end
end

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