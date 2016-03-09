require './data'

class Dinosaur

  # learn this & when familiar change to use the Matching All Attributes approach in Pluralize's - Ruby beyond the basics

  # DSL (design specific language) ~ dynamic specialization, hiding implementation

  def self.add_attribute(name, value)
    define_method(name) do
      value
    end
  end

  # metaprogramming, create methods on the fly
  def self.match_on(attr_name, &block)
    method_name = "match_#{attr_name}"

    # call block if it exists, otherwise use normal equivalence
    matcher = block || -> attr, value { attr == value }

    define_method(method_name) do |value|
      attr = self.send(attr_name) # calls the method name of an object
      matcher.call(attr, value)
    end
  end

  def self.match_on_any(attr_name)
    self.match_on(attr_name) do |ours, theirs|
      (ours & theirs).any?
    end
  end

  def self.match_on_at_least(attr_name, threshold)
    self.match_on(attr_name) do |_, value|
      value >= threshold
    end
  end

  def initialize(data)
    data.each do |key, value|
      self.class.add_attribute(key, value)
    end
  end

end

class Diplodocus < Dinosaur
  match_on :diet
  match_on :suborder
end

class TyrannosaurusRex < Dinosaur
  match_on :suborder
  match_on_any :hobbies
  match_on_at_least :length, 4000
end