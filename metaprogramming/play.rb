require './dinosaur'
require 'yaml'


class Play

  d = Dinosaur.new(TREX_DATA)
  p d.name
  p d.length
  p d.hobbies

  d = Diplodocus.new(DIPLODOCUS_DATA)
  p d.match_diet('herbivore') # true
  p d.match_suborder('Theropoda') # false

  trex = TyrannosaurusRex.new(TREX_DATA)
  p trex.match_suborder('Theropoda') # true
  p trex.match_hobbies(['Scaring children']) # true
  p trex.match_length(3000) # false
end