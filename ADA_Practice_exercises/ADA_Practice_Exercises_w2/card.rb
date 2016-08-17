†
class Card

  attr_accessor :value, :suit

  def initialize(val, s)
    @value = val
    @suit = s
  end

  def value=(val)
    @value = val
  end

  def value()
    @value
  end

  # attr_reader :suit # short hand
  def suit=(s)
    @suit = s
  end

  def suit=()
    @suit
  end
end

def to_s
  "#{@value} of #{@suit}."
end
my_card = Card.new(1, "Hearts")

puts my_card.to_s
