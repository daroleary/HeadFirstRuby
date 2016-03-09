class ProcessReview

  def find_adjective(string)
    words = string.split(' ') # break up string by spaces
    index = words.find_index('is')
    words[index + 1] # return the word after is e.g. is amazing, returns amazing
  end

  def process
    lines = []
    File.open('reviews.txt') do |review_file|
      lines = review_file.readlines # since its a block, we don't have to worry about manually closing the file using file.close
    end

    # one liner for a block, '{ }' replaces the need for 'do & end', use if only need one line
    # find_all will automatically return an array of the output of each line which is matched
    relevant_lines = lines.find_all { |line| line.include?('Truncated') }

    # any line which is matched will actually be removed from the array
    reviews = relevant_lines.reject { |line| line.include?('--') }

    adjectives = reviews.map do |review|
      adjective = find_adjective(review)
      "'#{adjective.capitalize}'"
    end

    puts 'The critics agree, Truncated is:'
    puts adjectives
  end

end