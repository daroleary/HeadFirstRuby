require './voting'
require './candidate'

class Play

  voting = Voting.new

  voting.process

  # as long as the hash is the last parameter in the method, you can remove the curly braces '{}'.
  candidate = Candidate.new('Amy Nguyen', :age => 37, :occupation => 'Engineer', :hobby => 'Lacrosse', :birthplace => 'Seattle')
  candidate.print_summary

  # can replace the :symbol => value, with symbol: value for a hash
  candidate = Candidate.new('Amy Nguyen', age: 37, occupation: 'Engineer', hobby: 'Lacrosse', birthplace: 'Seattle')
  candidate.print_summary

  new_candidate = Candidate.new('New')
  new_candidate.print_summary

end