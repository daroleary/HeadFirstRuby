require './celestial_body'

class CelestialBodies

  # if your default is a number, just use the hash default i.e. Hash.new(default) [only use immutable objects as hash defaults]
  # if your default is not a number, use a default block like below
  bodies = Hash.new do |hash, key|
    body = CelestialBody.new
    body.type = 'planet'
    hash[key] = body # last value, is treated as the hash's 'default' value
  end

  bodies['Mars'].name = 'Mars'
  bodies['Europa'].name = 'Europa'
  bodies['Europa'].type = 'moon'
  bodies['Venus'].name = 'Venus'

  puts bodies
end