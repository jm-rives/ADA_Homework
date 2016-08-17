
# FEEDBACK - The to_s method should probably simply return a string instead of printing. Since to_s means To->String.

# Otherwise exactly what we were looking for, for the basic solution.
class Planet
  attr_accessor :name, :gravity, :size, :atmosphere, :distance_from_sun, :distance_from_earth, :moon_number

  def initialize(name, gravity, size, atmosphere, distance_from_earth, moon_number)
    # params.each do |k,v| self.instance_variable_set("@#{k}", v)
       @name = name
       @gravity = gravity
       @size = size
       @atmosphere = atmosphere
       @distance_from_the_sun = distance_from_sun
       @distance_from_earth = distance_from_earth
       @moon_number = moon_number
  end

  attr_reader :planet

  def to_s()
    return "\n\n#{@name} gravity is #{@gravity} m/s2, is #{@size} miles in diameter, it's  atmosphere is predominately composed #{@atmosphere}, it is #{@distance_from_sun} #{@distance_from_earth} million miles from earth, while it is  and has #{@moon_number} moon(s).\n"
  end
end
# instantiate with planet name

venus = Planet.new('Venus', 8.87, 3769, "carbon dioxide", 261, 0)
# mercury = Planet.new
venus.to_s
# planet_array = []
# planet_array.push(venus)
#
# puts planet_array

# [ ]  using a HASH creat an INSTANCE  *for each* planet in the solar system

# [ ] OPTIONAL
# GOAL - ask for USER INPUT  to query information about the planets
# Include
# Menu (nicely formatted)
# Information about the Planet (well formatted)
# REPROMPT for another inquiry