class WordSplitter
  include Enumerable # enumerable Ruby module which includes methods like find_all, reject etc

  attr_accessor :string

  # enumerable can be mixed into any class that has an 'each' method
  def each
    string.split(' ').each do |word|
      yield word
    end
  end
end