puts "Enter 2 numbers"

num_1 = gets.chomp.to_i
num_2 = gets.chomp.to_i

if num_1 > num_2
  puts "#{num_1} is greater than #{num_2}"
elsif num_1 < num_2
  puts "#{num_2} is greater than #{num_1}"
else
  puts "Wow, the numbers are equal!"
end
