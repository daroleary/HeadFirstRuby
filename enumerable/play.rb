require './word_splitter'

class Play

  splitter = WordSplitter.new
  splitter.string = 'How do you do'

  p splitter.find_all { |word| word.include?('d') } # find all items where the block returns true
  p splitter.reject { |word| word.include?('d') } # reject items for which the block returns true
  p splitter.map { |word| word.reverse } # returns an array of all the blocks return values

  p splitter.any? { |word| word.include?('e') } # returns true, if the block returns true for any item
  p splitter.count
  p splitter.first
  p splitter.sort

  splitter.string = 'salad beefcake corn beef pasta beefy'

  p splitter.map { |word| word.capitalize } # capitalize each word
  p splitter.group_by { |word| word.include?('beef') } # split words into 2 array, one's with beef and one's without
  p splitter.max_by { |word| word.length } # find the longest word
  p splitter.to_a

end