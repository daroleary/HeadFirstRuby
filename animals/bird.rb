require './animal'

class Bird < Animal

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end