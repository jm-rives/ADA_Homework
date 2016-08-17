#
# # ReturnMethods.rb
#
# chillpoodle_order = {quantity: 1, type: "Bowl", guac: true, i_know_guac_is_extra: true, rice: "Brown",
#                     meat: "Steak", topping: "Cheese"}
#
#
#
# # 1).  Write a method that will returns a Chipoltle order
#
# def get_order()
#   puts "How many ordes do you require?"
#   quantity = gets.chomp
#
#   puts "What thype of order is it?"
#   type = gets.chomp
#
#   puts "What meat do you require"
#   meat = gets.chomp
#
#   puts "What types of rice?"
#   rice = gets.chomp
#
#   puts "What types of toppings do you want"
#   toppings = gets.chomp
#
#   puts "Do you want Guac?"
#   gauc = gets.chomp
#   if (gauc == "yes")
#     gauc = true
#     puts "Remeber gaucomole is extra!"
#   else
#     gauc = false
#   end
#   chillpoodle_order = {quantity: 1, type: "Bowl", guac: true, i_know_guac_is_extra: true, rice: "Brown",
#                       meat: "Steak", topping: "Cheese"}
# end


# 2).  Write a method named get_factors that will return an Array of
#       all the factors of a number taken as a parameter.

def get_factors(num)
  puts "Please enter the number you would like factor!"
  num_to_factor = gets.chomp.to_i
  possible_factors = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  #(1..num).each do |num|
  factors = []
  possible_factors.each do |f|
    if num_to_factors % f == 0
      puts "#{num} is a factor of #{num1}"
      factors.push(f)
    else
      puts "#{possible}"
    end
end


# 3).  Write a method that uses get_order to read in an array of 3 Chipoltle
#       orders.  Name the method get_orders


# 4).  Write a method that takes an array of chilpotle_order hashes and returns
#       the number that need guac.  Name it, number_that_need_guac




###########  Testing

# Test 1

#order = get_order()
#
# puts "Order contains #{order[:quantity]} order of:
#     #{order[:type]} with Guac #{order[:guac]} Rice: #{order[:rice]}
#     Meat:  #{order[:meat]} Topping:  #{order[:topping]} "

# Test 2

#puts "Factors of 10:  #{get_factors(10)}"


#  Test 3
#orders = getOrders()


# Test 4
#puts "You need #{number_that_need_guac(orders)} orders worth of Guac"
