
# Build a Baby Dragon
# that [] eats, [] sleeps, [] poop, [] walk, [] play

# Agreements: 10 kg of content means they're full
# =>          0 kg of stuff in his intestines means he dosen't need to go
# =>

class Dragon
  def initialize(name)
    @food_in_belly = 100 # in percent
    @food_in_instetines = 0
    @awake = true
    @name = name
    #@size = size
    puts "#{@name} has been born!"
  end

  def feed(amount= 10)
    @food_in_belly += amount
    if @food_in_belly > 100
      puts "Oh noes! #{@name} overate! He made a mess"
      @food_in_belly = 100
    elsif @food_in_belly
      puts "#{@name} eats happily!"
    end
    time_passed # where class method is called in another
  end


  #
  def walk
    if @food_in_instetines > 50
      puts "#{@name} relives themselves on the neighbor's hydranga"
      @food_in_instetines = 0
    else
      puts "#{@name} sniffs around the entire block but dosne't get down to business."
    end
    time_passed
  end
  #
def nap
  @awake = false
  time_passed
end

  def wake
    if @awake == true
  return
    else
  @awake = true
  puts "You gently wake #{@name}"
    end
  end

end
  def play
   wake
   puts "You play fetch with #{@name}"
   puts "#{@name} purrs singing your eyebrows"
   tiime_passed
  end
  # def grow
  #   @size =+ size
  #   if @size >= 100
  #     puts "Wow, #{@name} wings grew in!"
  #   end
###private methods being #############################################
  private # anything below and inside the class can call it, could not run my_dragon.time_passed
  def time_passed
    @food_in_belly -= 10
    @food_in_instetines += 10
    if @food_in_belly < 30
      puts "#{@name} is HUNGRY!"
    end
    if @food_in_instetines > 80
      if @awake != true
        puts "#{@name} wet's the bed and wakes up!"
        time_passed
      else
        "#{@name} is doing the potty dance!"
      end
    end

    if @food_in_belly <= 0
      if @awake != true
        wake
        puts "#{@name} was awaked by hunger pains and eats you!"
        exit
      end
      puts "#{@name} is STARVING and EATS YOU !!!!"
      exit # will terminate program
    end
    if @awake != true
      puts "#{@name} snores loudly!!!"
    end
  end

def grow


baby_D = Dragon.new("Toothful")
5.times do
  baby_D.feed
end

# print debuggin' for starving #werks
# 20.times do
#   baby_D.time_passed
# end
# pring debuggin' for toileting # werks
# 20.times do
#   baby_D.walk
# end

baby_D.nap
