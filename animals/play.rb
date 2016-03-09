require './dog'
require './cat'
require './bird'
require './armadillo'

class Play

  def call_dogs
    fido = Dog.new
    fido.name = 'Fido'
    fido.age = 2

    rex = Dog.new
    rex.name = 'Rex'
    rex.age = 3

    fido.report_age
    rex.report_age

    fido.age = -1
  end

  def call_animals
    whiskers = Cat.new
    whiskers.name = 'Whiskers'

    fido = Dog.new
    fido.name = 'Fido'

    polly = Bird.new
    polly.name = 'Polly'

    dillon = Armadillo.new
    dillon.name = 'Dillon'

    polly.age = 2
    polly.report_age
    fido.move('yard')
    whiskers.talk
    dillon.move('burrow')
  end
end