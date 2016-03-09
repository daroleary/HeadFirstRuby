require './animal'

class Armadillo < Animal

  def move(destination)
    puts "#{@name} unrolls!"
    super # calls the overridden super method by the same signature
  end
end