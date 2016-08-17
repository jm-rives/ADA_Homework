# Create a SolarSystem class that has an attribute planets that has zero to many Planet instances. There are a few different options for how to associate the planets with your solar system:
# Create a method that adds a single planet to a solar system
# Create a method that adds a list of planets to an existing list of planets


class Planet
  attr_accessor :name, :gravity, :size, :atmosphere, :distance_from_sun, :distance_from_earth, :moon_number
  attr_reader :planet

  def initialize(name, gravity, size, atmosphere, distance_from_sun, distance_from_earth, moon_number)
    # params.each do |k,v| self.instance_variable_set("@#{k}", v)
       @name = name
       @gravity = gravity
       @size = size
       @atmosphere = atmosphere
       @distance_from_the_sun = distance_from_sun
       @distance_from_earth = distance_from_earth
       @moon_number = moon_number
  end

  def to_s()
    return "\n\n#{@name}'s gravity is #{@gravity} m/s2, is #{@size} miles in diameter, it's  atmosphere is predominately composed #{@atmosphere}, it is #{@distance_from_sun} miles from the sun and #{@distance_from_earth} million miles from earth. #{@name} has #{@moon_number} moon(s).\n"
  end
end

mercury = Planet.new('Mercury', 3.7, 1516 ,"oxygen", 35.98, 48, 0)
venus = Planet.new('Venus', 8.87, 3769, "carbon dioxide", 67.24,  261, 0)
earth = Planet.new('Earth', 9.8, 3959, "nitrogen", 92, 0 ,1)
mars = Planet.new('Mars', 2.1, 2106, "carbon dioxide", 141.6, 54.6, 2 )
jupiter = Planet.new('Jupiter', 24.79, 43111, "hydrogen", 483.8, 588, 67)
saturn = Planet.new('Saturn', 10.44, 36184, "hydrogen", 888.2, 12, 62 )
uranus = Planet.new('Uranus', 8.69,15759, "hydrogen", 1.787, 19.8, 5)
neptune = Planet.new('Neptune',11.15, 15299, "hydrogen", 27.95, 27, 14)
# planet_9 ("Planet", "unknown", "unknown")

many_planets = [{planet1: "Pern", planet2: "Tattoni", planet3: "Reiza"}]
planet_array = []

planet_array.push(mercury)
planet_array.push(venus)
planet_array.push(earth)
planet_array.push(mars)
planet_array.push(jupiter)
planet_array.push(saturn)
planet_array.push(uranus)
planet_array.push(neptune)

# puts planet_array # print debuggin' werks

class SolarSystem
  attr_accessor :planet_array, :planet, :planet_list

  # Solar_system_wave2.rb:55: formal argument cannot be an instance variable @planet_array
  # syntax error, unexpected '[', expecting ')' planet_array[]
  def initialize(planet_array)
    @planet_array = planet_array
  end

  # werks
  def add_planet(planet)
    @planet_array.push(planet)
  end

  # def add_many_planets(many_planets,)
  # 	planet_list_1 = ["planet", "planet", "planet", "planet"]
  # 	planet_list_2 = ["more_planet", "more_planet", "more_planet"]
  #     big_list_o_planets = planet_list_2.concat planet_list_1
  #     puts big_list_o_planets
  # end

  def add_many_planets(many_planets)
     @planet_array.concat (many_planets)
  end

end
    # @planet_array.each do |planet|
    #   return "\nThe solar system contains #{planet}"
    # end
    #TODO jm_rives clean this output up The solar system contains [#<Planet:0x007fa19c95bcb8 @name="Mercury", @gravity=3.7, @size=1516, @atmosphere="oxygen", @distance_from_the_sun=35.98, @distance_from_earth=48, @moon_number=0>, #<Planet:0x007fa19c95bc18...

#TODO jm_rives make method to read a chosen planet out of planet array
#   def read_planet
#      read planet out of array return each  key value pair
#
#   end
# end
many_planets = [{planet1: "Pern", planet2: "Tattoni", planet3: "Reiza"}]

planet_9 = Planet.new('Planet 9', nil, nil, "hydrogen", nil, nil, nil)
sol = SolarSystem.new(planet_array)

sol.add_planet(planet_9)
puts sol.add_many_planets(many_planets)
# puts planet_array
# sol = SolarSystem.add_planet.new("Planet 9", 5, 5, "carbon dixoide", 5, 5, 5)
# puts sol



# another_planet_array
