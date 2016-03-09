class Voting

  def process

    lines = []
    File.open('votes.txt') do |file|
      lines = file.readlines
    end

    votes = {} # '{}' defines a hash, key value object
    lines.each do |line|
      name = line.chomp
      if votes[name] # false & nil, are considered 'falsy' and go to the else statement
        votes[name] += 1
      else
        votes[name] = 1
      end
    end

    p votes


    votes = Hash.new(0) # when no value returned, default value of 'zero' is returned instead. Otherwise 'nil' would have been returned.
    # by replacing '{ }' with Hash.new, we don't need to handle the nil case

    lines.each do |line|
      name = line.chomp
      name.upcase!
      votes[name] += 1
    end

    votes.each do |name, count|
      puts "#{name}: #{count}"
    end
  end

end