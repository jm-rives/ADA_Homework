# Die.rb

class Die

  def initialize(num_slides = 6)
    @num_sides = num_sides
      roll
  end

  def roll
    # +1 because rand is really 0 ... 6 not
    # and dice don't start with 0
    return @showing = Random.rand(@num_sides) + 1
  end

  def showing
    return @showing
  end
end


die1 = Die.new(20)

die2 = Die.new

die1.roll
puts die1.show

puts "Die1 = " + die1.showing.to_s + " and Die2 = " + die2.showing.to_s

# how can I make an Array of Dice?
