require './animal'

class Cat < Animal

  def talk
    puts "#{@name} says Meow!"
  end
end