# extend project to add a growth feature
# extend project to add a end game reward feature
#
#
require 'rainbow'

# rainbow.each do |hue|
#   hue.each do |hue_name, rgb_code|
#     puts Rainbow(hue_name.to_s).color(hue_name)
#   end
# end

class Dragon
  attr_accessor

  def initialize(name, color =:purple)
    @food_in_belly = 100
    @food_in_intestine = 0
    @awake = true
    @name = name
    @hydration_level = 100
    @liquid_in_bladder = 0
    @color = color.to_sym
    @lonliness = 0

    case @color
    when  :green, :orange, :red, :purple
      puts Rainbow("#{@name}, a beautiful #{@color} dragon, has been born!").color(@color)
    else
      puts "#{@name}, a beautiful #{@color} dragon, has been born!"
    end

  end # end of initalize method
#new method for socialize
  def socialize(amount=20)
    @lonliness -=amount
    puts "#{@name} chats with pals."
    time_passed
  end


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
      if @color == :green
        puts "#{@name} is a #{@color} dragon so she ostentatiously recycyles during playtime."
      elsif @color == :orange
        puts "#{@name} is a #{@color} dragon so she makes creamsicles during playtime."
      elsif @color == :red
        puts "#{@name} is a #{@color} dragon so she juggles fire during playtime."
      else
        puts "#{@name} is a #{@color} dragon so she knits you a sweater during playtime."
      end
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
    @lonliness +=10

    if @hydration_level < 30
      puts "#{@name} is thirsty!"
    end

    if @lonliness > 70
      puts "#{@name} is feeling lonely."
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

  #what happens if dragon is dehydrated to 0
    if @hydration_level <= 0
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes because she is thristy!"
      else
      puts "#{@name} was so thirsty she incinerates you!"
      exit #makes the program end
      end
    end

    if @lonliness >= 100
      if @awake != true
        @awake = true
        puts "#{@name} suddenly awakes because she is VERY lonely!"
      else
      puts "#{@name} was so lonely she abandoned you and went to the dragon park in search of friends!"
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
my_dragon.play
my_dragon.drink
my_dragon.walk
my_dragon.feed
my_dragon.drink
my_dragon.play