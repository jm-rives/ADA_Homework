# The program should ask the user for an operation (string or numeric symbol) and two numbers.
# The program should use the user inputed operation and two numbers to provide the result of applying the operation to the two numbers.
# The program should use the operators +, -, *, /, and recognize their english equivalents

# instructions here
# https://github.com/AdaGold/standalone-exercises/blob/master/calculator.md
# gist here (edited after submission)

puts "Would you like me to do some math for you? Enter 'y' to continue or 'exit' to quit"
answer = gets.chomp.downcase # werks

# werks - # consider exchanging for larger 'quit loop'
if ['exit'].include? answer
  puts "Thanks for playing!"
  exit
else
  puts "Let's get our math on!\n"
end

# array to hold user data
numbers_to_math_on = []

# adding
def adding_numbers(numbers)
  if numbers_to_math_on.length > 0 then
      total = numbers_to_math_on[0] + numbers_to_math_on[1]
      total = sprintf('%.2f', total) # I found this on StackOverflow
      puts "Thank You for using my program. You added #{numbers_to_math_on[0]} and #{numbers_to_math_on[1]} and your result was #{total}"
  end
end

# subtracting
def subtracting_numbers(numbers)
  if numbers_to_math_on.length > 0 then
      total = numbers_to_math_on[0] - numbers_to_math_on[1]
      total = sprintf('%.2f', total)
      puts "Thank You for using my program. You substracted #{numbers_to_math_on[0]} and #{numbers_to_math_on[1]} and your result was #{total}"
  end
end

# multipling
def multipling_numbers(numbers)
  if numbers_to_math_on.length > 0 then
      total = numbers_to_math_on[0] * numbers_to_math_on[1]
      total = sprintf('%.2f', total)
      puts "Thank You for using my program. You mutiplied #{numbers_to_math_on[0]} and #{numbers_to_math_on[1]} and your result was #{total}"
  end
end

# dividing
def dividing_numbers(numbers)
  if numbers_to_math_on.length > 0 then
      total = numbers_to_math_on[0] / numbers_to_math_on[1]
      total = sprintf('%.2f', total)
      puts "Thank You for using my program. You divided #{numbers_to_math_on[0]} and #{numbers_to_math_on[1]} and your result was #{total}"
  end
end

# numbers_to_math_on to accept the sanitized numbers entered by user
# numbers_to_math_on = [] #had to comment out my duplicate

#TODO jmrives need to nest in a loop for retrys

# This block generates the numbers to perform math operations on
until numbers_to_math_on.length > 1 # can refactor to allow for unlimited numbers
  puts "Please enter you number: "
  number = gets.chomp
  # puts "Your number is #{number}" # print debuggin'

# TODO jmrives come up with a better data checker
# v ~ number.to_f != 0.0 # will break if someone enters 0.0
# v1 ~ [/0-9/].include? number \d did not behave as desired either
# v2 ~ below
  if ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"].include? number # clunky, couldn't get my regex in order
    # puts "That's a number!" # print debuggin'
    number = number.to_f
    numbers_to_math_on.push(number)
    # puts "#{numbers_to_math_on} # print debuggin'
  else
    puts "Sorry. That is not a number. Please Try again."
  end
end

# # this code block elicits, sanitizes, and assigns to a variable the chosen math operator
puts "Would you like to multiply, divide, add, or subtract. Feel free to enter text or the mathematical symbol: "
operator = gets.chomp.to_s

case operator
  when "add", "+", "plus"
    puts "Look at us adding things!"
    adding_numbers(numbers_to_math_on)
  when "subtract", "-"
    puts "We're are subtracting things!"
    subtracting_numbers(numbers_to_math_on)
  when "multiply", "times", "*"
    puts "We're multiply things. Look out Rabbits!"
    multipling_numbers(numbers_to_math_on)
  when "divide", "division", "/"
    puts "We're dividing! Just ike tiny cells in a petri dish!"
    dividing_numbers(numbers_to_math_on)
  else
    puts "I have no idea what you want me to do. Try again please!"
end
# remeber to leverage case fall through
