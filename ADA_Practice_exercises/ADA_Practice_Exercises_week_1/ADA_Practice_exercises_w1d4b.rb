# variant of fizz - buzz

num1 = 5

(0..num1).each do |num|
  if num % num1 == 0
    puts "#{num} is a factor of #{num1}"
  else
    puts "#{num} is not a factor of #{num1}"
  end
end

# refactor

unless num1 <= num2
  puts "#{num1} is greater or equal to #{num2}."
else
  puts "#{num2} is greater  #{num2}"
end
