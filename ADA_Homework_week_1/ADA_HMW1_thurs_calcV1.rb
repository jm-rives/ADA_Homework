###################################
# 			Revision
##################################
# Also if I enter a number I get, "Sorry. That is not a number. Please Try again."

# I have to enter several numbers to get things read
# in. This happens if I enter 2 digit numbers! The loop keeps going until I enter a 1 digit number. How could you fix this?
#########

# The program should ask the user for an operation (string or numeric symbol) and two numbers.
# The program should use the user inputed operation and two numbers to provide the result of applying the operation to the two numbers.
# The program should use the operators +, -, *, /, and recognize their english equivalents

# instructions here
# gist https://github.com/AdaGold/standalone-exercises/blob/master/calculator.md
# revision gist here

## FROM CHRIS "#For readability I suggest putting all the method definitions at the top and the code that starts the program below them."

# adding
def adding_numbers(numbers)
  if numbers.length > 0 then
      total = numbers[0] + numbers[1]
      total = sprintf('%.2f', total)
      puts "Thank You for using my program. You added #{numbers[0]} and #{numbers[1]} and your result was #{total}"
  end
end

# subtracting
def subtracting_numbers(numbers)
  if numbers.length > 0 then
      total = numbers[0] - numbers[1]
      total = sprintf('%.2f', total)
      puts "Thank You for using my program. You substracted #{numbers[0]} and #{numbers[1]} and your result was #{total}"
  end
end

# multipling
def multipling_numbers(numbers)
  if numbers.length > 0 then
      total = numbers[0] * numbers[1]
      total = sprintf('%.2f', total)
      puts "Thank You for using my program. You mutiplied #{numbers[0]} and #{numbers[1]} and your result was #{total}"
  end
end

# dividing
def dividing_numbers(numbers)
  if numbers.length > 0 then
      total = numbers[0] / numbers[1]
      total = sprintf('%.2f', total)
      puts "Thank You for using my program. You divided #{numbers[0]} and #{numbers[1]} and your result was #{total}"
  end
end

puts "Would you like me to do some math for you? Enter 'y' to continue or 'exit' to quit"
answer = gets.chomp.downcase # werks

# werks - # consider exchanging for larger 'quit loop'
if ['exit'].include? answer
  puts "Thanks for playing!"
  exit
else
  puts "Let's get our math on!\n"
end

# numbers to accept the sanitized numbers entered by user
numbers = []

#TODO jm_rives need to nest in a loop for retrys

# This block generates the numbers to perform math operations on
until answer == "quit" || answer == "quit" || numbers.size > 1# can refactor to allow for unlimited numbers
  puts "Please enter you number: "
  answer = gets.chomp.downcase
  # puts "Your number is #{number}" # print debuggin'

# TODO jmrives come up with a better data checker
# v ~ number.to_f != 0.0 # will break if someone enters 0.0
# v1 ~ [/0-9/].include? number \d did not behave as desired either
# v2 ~ below
  if answer == "quit" || answer == "Quit"
  	break
  elsif  answer =~ /\D/
   	puts "Sorry. That is not a number. Please Try again."
  	redo
  else
    puts "That's a number!" # print debuggin'
	answer = answer.to_f
    numbers.push(answer)
  end
end

# this code block elicits, sanitizes, and assigns to a variable the chosen math operator
puts "Would you like to multiply, divide, add, or subtract. Feel free to enter text or the mathematical symbol: "
operator = gets.chomp.to_s

case operator
  when "add", "+", "plus"
    puts "Look at us adding things!"
    adding_numbers(numbers)
  when "subtract", "-"
    puts "We're are subtracting things!"
    subtracting_numbers(numbers)
  when "multiply", "times", "*"
    puts "We're multiply things. Look out Rabbits!"
    multipling_numbers(numbers)
  when "divide", "division", "/"
    puts "We're dividing! Just ike tiny cells in a petri dish!"
    dividing_numbers(numbers)
  else
    puts "I have no idea what you want me to do. Try again please!"
end
