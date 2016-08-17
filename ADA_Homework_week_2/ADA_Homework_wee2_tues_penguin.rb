class Penguin
attr_reader
  def initialize(name)
    @name = name
    puts "Hi, #{@name}!"
  end

  def look
    puts "Fuzzy!"
  end
end

linux = Penguin.new("Norton")
linux.look

# output from above
# n000b% ruby ADA_Homework_wee2_tues_penguin.rb
# Hi, Norton!
# Fuzzy!
