class Dragon
  attr_accessor

  def initialize(name)
    @food_in_belly = 100
    @food_in_intestine = 0
    @awake = true
    @name = name
    @hydration_level = 100
    @liquid_in_bladder = 0
    puts "#{@name} has been born!"
  end # end of initalize method

  def feed(amount=10)
    @food_in_belly += amount

    if @food_in_belly > 100
      puts "#{@name} is stuffed. #{@name} pukes the execess."
      @food_in_belly = 100
    else
      puts "#{@name} eats happily."
    end # end of conditional for overstuffed
    time_passed
  end # end of feed method

  def drink(amount=10)
    @hydration_level += amount

    if @hydration_level > 100
      puts "#{@name} is hyper-hydrated. #{@name} pukes the execess."
      @hydration_level = 100
    else
      puts "#{@name} drinks happily."
    end # end of conditional for hyper-hydrated
    time_passed
  end # end of drink method

  def walk
    if @awake != true
      puts "Wake up, #{@name}. It's time for a walk."
      @awake = true
    end #end of conditional to wake up and go out

    if @food_in_intestine > 50
      @food_in_intestine = 0
      puts "#{@name} pooped."
    else
      puts "#{@name} sniffs around, but doesn't do business."
    end #end of conditional for pooping on walk
  time_passed
end #end of walk method

  def nap
    @awake = false
  time_passed
end #end of nap method

  def play
    wake
    puts "You play fetch with #{@name}."
  time_passed
  end #end of play method

  def wake
    if @awake
      return
    else
      @awake = true
      puts "You woke up #{@name}."
    end #end of conditional to wake up the dragon
  end #end of wake method

private #internal method that can only be called on my other methods, "helper method",
#means you can't do my_dragon.time_passed. Private applies to any method that comes after the private label.
  def time_passed
    @food_in_belly -= 10
    @food_in_intestine += 10
    @hydration_level -= 10
    @liquid_in_bladder +=10

    if @hydration_level < 30
      puts "#{@name} is thirsty!"
    end

    if @liquid_in_bladder > 50
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes because she needs to pee!"
      else
      puts "#{@name} needs to go out to pee."
      end #end of conditonal if she wakes up to pee
    end

    if @food_in_belly < 30
      puts "#{@name} is hungry!"
    end #end of conditional to determine hunger

    if @food_in_belly <= 0
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes because she is hungry!"
      else
      puts "#{@name} was so hungry she ate you!"
      exit #makes the program end
      end  #end of conditional if she's so hungry she wakes up
    end #end of conditional if hunger drops to zero

  #what happens if drago is dehydrated to 0
  if @hydration_level <= 0
    if @awake != true
      @awake = true
      puts "#{@name} suddenly awakes because she is thristy!"
    else
    puts "#{@name} was so thirsty she incinerates you!"
    exit #makes the program end
    end
  end

    if @food_in_intestine > 80
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes because she needs to go out to poop!"
      else
      puts "#{@name} needs to go out to poop."
      end #end of conditonal if she wakes up to pee
    end#end of if statement for when she needs to go out

    if @awake != true
        puts "#{@name}: zzzzzzzzzzz....."
    end #end of snooze comditional
  end #end of time passed method
end #end of Dragon class

my_dragon = Dragon.new("Stella")

# 5.times do
#   my_dragon.feed
# end

my_dragon.drink
my_dragon.walk
my_dragon.feed
my_dragon.drink