  # create CLASS planet with name attribute

class Planet
  attr_accessor :name, :gravity, :size, :atmosphere,:distance_from_sun, :distance_from_earth, :moon_number

  def initialize(name, gravity, size, atmosphere, distance_from_sun, distance_from_earth, moon_number)
    # params.each do |k,v| self.instance_variable_set("@#{k}", v)
       @name = name
       @gravity = gravity
       @size = size
       @atmosphere = atmosphere
       @distance_from_sun = distance_from_sun
       @distance_from_earth = distance_from_earth
       @moon_number = moon_number
  end

  attr_reader :planet

  def to_s()
    puts "\n\n#{@name} gravity is #{@gravity} m/s2, is #{@size} miles in diameter, it's  atmosphere is predominately composed #{@atmosphere}, it is #{@distance_from_sun}, while it is #{@distance_from_earth} million miles from earth, and has #{@moon_number} moon(s).\n"
  end
end

class SolarSystem
  attr_accessor :planets
  def intialize(planets) # this parameter expects a list of planets

  end

  def add_planet
    

  end
end
# instantiate with planet name
# make this into a hash

mercury = Planet.new('Mercury', 3.7, 1516 ,"oxygen", 35.98, 48, 0)
venus = Planet.new('Venus', 8.87, 3769, "carbon dioxide", 67.24,  261, 0)
earth = Planet.new('Earth', 9.8, 3959, "nitrogen", 92, 0 ,1)
mars = Planet.new('Mars', 2.1, 2106, "carbon dioxide", 141.6, 54.6, 2 )
jupiter = Planet.new('Jupiter', 24.79, 43111, "hydrogen", 483.8, 588, 67)
saturn = Planet.new('Saturn', 10.44, 36184, "hydrogen", 888.2, 12, 62 )
uranus = Planet.new('Uranus', 8.69,15759, "hydrogen", 1.787, 19.8, 5)
neptune = Planet.new('Neptune',11.15, 15299, "hydrogen", 27.95, 27, 14)

planet_array = [] # this expects hashes

planet_array.push(mercury)
planet_array.push(venus)
planet_array.push(earth)
planet_array.push(mars)
planet_array.push(jupiter)
planet_array.push(saturn)
planet_array.push(uranus)
planet_array.push(neptune)


#puts planet_array #w print debuggin' werks
# venus.to_s

# [ ]  using a HASH creat an INSTANCE  *for each* planet in the solar system

# [ ] OPTIONAL
# GOAL - ask for USER INPUT  to query information about the planets
# Include
# Menu (nicely formatted)
# Information about the Planet (well formatted)
# REPROMPT for another inquiry
