# test_pry
# pry is a REPL 
# reads input
# evaluates it
# prints it out
# loops up to do it again
# IRB is also a REPL

# Features of PRY



# Prys use as a debugger


# May be handy when we learn Rails

# can create gists

# will help you 
require 'pry'

class HelloPry
  def hello
    puts "Hello Pry!"
  end
end

hello_again = HelloPry.new

x = 10

# starts the REPL
binding.pry

puts "The Program resumes here. The value of x is #{x}."

# what it does
# what the documentation is like
# what the team thnks is useful