require './small_oven'

class Play

  dinner = ['turkey', nil, 'pie']
  oven = SmallOven.new

  oven.turn_off
  dinner.each do |item|
    begin
      oven.contents = item
      puts "Serving #{oven.bake}"
    rescue OvenEmptyError => error # store exceptions in a variable
      puts "Error: #{error.message}"
    rescue OvenOffError => error
      oven.turn_on
      retry # returns to the start of the begin clause and runs it again
    ensure
      # functionally equivalent to finally clause, called even if exception is called or not
      oven.turn_off # ensures that when the block completes, it'll call the method 'turn_off'
    end
  end
end