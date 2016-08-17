# https://github.com/AdaGold/standalone-exercises/blob/master/random-menu-generator.md
# Create a random menu generator that can be played from the Terminal
# based on several items that you determine.
# three arrays of ten items each
# first array can contain adjectives, the second, cooking styles and the third, foods
# e.g 1. hot pan-fried dumplings

## review student acct generator hash & election program

# ~ WERKING ~ #
food_adjectives = ["hot", "cold", "spicy", "savory", "umami", "sweet", "sour", "cruncy", "gelatinous", "pungent"]
food_cooking_style = ["fried", "baked", "roasted", "broiled", "sauted", "toasted", "steamed", "barbqued", "blanched", "seared"]
food_main_ingrediant = ["tuna", "lamb", "porkbelly", "chicken", "calamari", "liver", "bacon", "avocado", "gyoza", "steak"]

# menu_num to number menu items
menu_num = 0
# dot for formatting menu item numbers
#dot = "." #{dot}#
#space = " " #{space}

#food_adjectives.each_index do |item|
for i in 0..food_adjectives.length - 1
  menu_num  += 1 # werks
  line =  "#{menu_num}. #{food_adjectives.shuffle[i]} #{food_cooking_style.shuffle[i]} #{food_main_ingrediant.shuffle[i]}."
  puts line
end
