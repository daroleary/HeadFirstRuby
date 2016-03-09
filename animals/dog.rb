require './animal'

class Dog < Animal

  def to_s
    "#{@name} the dog, aged #{@age}"
  end
end