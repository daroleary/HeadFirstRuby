class Functional

  # ruby's own map method replaces the need for this method
  def map(list, fn)
    results = []
    list.each do |item|
      results << fn.call(item)
    end
    results
  end
end