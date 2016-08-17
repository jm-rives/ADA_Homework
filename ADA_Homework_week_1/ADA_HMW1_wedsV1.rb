# https://github.com/AdaGold/standalone-exercises/blob/master/random-menu-generator.md
# OPTIONS:  alllows user to enter desired quantity and quality of descriptors
# Create a random menu generator that can be played from the Terminal
# first array can contain adjectives, the second, cooking styles and the third, foods
# e.g 1. hot pan-fried dumplings

new_menu = []
menu_num = 0

# arrays to store user generated descriptors
food_adjectives = []
food_cooking_style = []
food_main_ingrediant = []

puts "Would you like to build a custom food menu? Please enter 'yes' to continue or 'quit' to exit program:"
answer = gets.chomp.downcase
while answer != "quit"
  # loops to populate menu descriptors

  puts "Please enter an adjective to describe a food. E.g. hot, sour, crispy, etc. As many as you like. Enter quit when done "
  food_descriptor = gets.chomp.downcase

  if food_descriptor != "quit"
    food_adjectives.push(food_descriptor)
  else
    answer = "quit"
    next
  end

  puts "Please enter a cooking method for food. E.g. saute, fry, bake etc.  As many as you like. Enter quit when done. "
  cooking_method = gets.chomp.downcase

  if cooking_method != "quit"
    food_cooking_style.push(cooking_method)
  else cooking_method == "quit" || answer == "quit"
    answer = "quit"
    next
  end

  puts "Please enter a main ingrediant to describe a food. E.g. chicken, tofu, pork, etc. As many as you like. Enter quit when done "
  food_ingrediant = gets.chomp.downcase

    if food_ingrediant != "quit"
      food_main_ingrediant.push(food_ingrediant)
    else
      answer = "quit"
      next
    end

  # populates menu

  ####### PRoblem is HERE!

end
# buiids and shuffles menu
for i in 0..food_adjectives.length - 1
  menu_num  += 1 # werks
  line =  "#{menu_num}. #{food_adjectives.shuffle[i]} #{food_cooking_style.shuffle[i]} #{food_main_ingrediant.shuffle[i]}."
  new_menu.push(line)
end

puts new_menu
