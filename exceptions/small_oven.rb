require './oven_off_error'
require './oven_empty_error'

class SmallOven

  attr_accessor :contents

  def turn_on
    puts 'Turning oven on.'
    @state = 'on'
  end

  def turn_off
    puts 'Turning oven off.'
    @state = 'off'
  end

  def bake
    unless @state == 'on'
      raise OvenOffError
    end
    if @contents == nil
      raise OvenEmptyError
    end
    "golden-brown #{contents}"
  end

end