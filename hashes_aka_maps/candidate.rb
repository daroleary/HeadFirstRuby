class Candidate

  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  # def initialize(name, options = {}) # by specifying a default, no options being supplied will default to an empty hash
  #   self.name = name
  #   self.age = options[:age]
  #   self.occupation = options[:occupation]
  #   self.hobby = options[:hobby]
  #   self.birthplace = options[:birthplace]
  # end

  # use of keyword argument instead of options
  # would only allow these keywords, each of which we've given default values
  def initialize(name, age: nil, occupation: nil, hobby: nil, birthplace: 'Sleepy Creek')
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end

  def print_summary
    puts "Candidate: #{name}"
    puts "Age: #{age}"
    puts "Occupation: #{occupation}"
    puts "Hobby: #{hobby}"
    puts "Birthplace: #{birthplace}"
  end

end