# ~ Questions ~ #
# Why do we need line 9? #
  #line nine is needed to provide a comparision method
# What is the relationship between words and wrod on line 10
  #word is an abritraly named variable to represent an item within the array word. It follows the convention of using the singular form of the array or hash name.
# Why doesn't line 22 have an associated if/condition?
  #It is not needed, we have two conditioin that are essentially binary, and a thrid neuatral case. A tie between our happy and sad counter. If there are not enough "happy " or "sad " words to over match then we have a neautral mood

########################################################
# FROM AUSTIN what type of data is analyze_mood expecting?
# what type of data is text[0..text.size]?
# line 1 assings a constant to a hash with feeling keys and values of descriptors
########################################################

# all caps in a variable name represent constant. A constants value is not mutable. Or not supposed to be
FEELINGS = {
  happy: %w(yay good great), # this is an  "word array" literal of strings
  sad: %w(terrible awful horrible) # word array literal repeated
}

#########################################################
# All our defs we are going to use in the program

# using a loop strip out the punctuation resulting in the emtoicon bug
# need this for data normalization
# WORDS: Expecting array of strings
def paragraph_stripped(words)
	words.each do |item|
  	item.gsub!("!", "") # was not able to chain the arguements
  	item.gsub!(".", "")
  	item.gsub!(",", "")
  	item.gsub!("#", "")
  	# puts item # print debuggin'
	end
end

# words: a string of words
def analyze_mood(words) # method definition
  happy = 0 # variable assingment
  sad = 0 # variable assingment
  words.split(" ").each do |word| # splits array on space
    word.downcase!
    if FEELINGS[:happy].include?(word) # searchs string for keyword
      happy += 1 # increments counter
    elsif FEELINGS[:sad].include?(word) # searchs string for keyword
      sad += 1 # increments sad
    end # completes if statment
  end # completes method definition

  if happy > sad  # compares happy sad counters
    return ":-)" # data returned to caller
  elsif happy < sad # compares happy sad counters
    return ":-(" # data returned to caller
  else # compares happy sad counters
    return ":-|" # data returned to caller
  end
end

# the method is expecting an array of strings
def happy_days(smileys) # consider refactoring to accept n number of entries / n count
  happy_count = 0
  entry_count = 0
  #while happy_count < 3 # having trouble with the loop logic == returns infinte loop, >= returns 1 off error
  smileys.each do |smiley|
    if happy_count < 3
      if smiley == ":-)"
        happy_count += 1
        entry_count += 1
        #puts entry_count
      elsif smiley == ":-("
        entry_count += 1
        #puts entry_count
      elsif smiley == ":-|"
        entry_count += 1
        #puts entry_count
      else
      end
    else
      break
    end
  end
  puts "There are #{happy_count} happy days for every #{entry_count} entries."
end



def overall_mood(emoties)
  happy_count = 0
  sad_count = 0
  meh_count = 0
  entry_count = 0
  emoties.each do |emote|
    #puts word
    if emote == (":-)")
      happy_count += 1
      entry_count += 1
    elsif emote == (":-(")
      sad_count += 1
      entry_count += 1
    elsif emote == (":-|")
      meh_count += 1
      entry_count += 1
    else
    end
  end

  if happy_count > sad_count && happy_count > meh_count && sad_count <= meh_count
    puts "Overall mood is happy!"
  elsif sad_count > happy_count && sad_count > meh_count && happy_count <= meh_count
    puts "Overall mood is sad."
  else meh_count > happy_count && meh_count > sad_count && happy_count <= sad_count
    puts "Overall mood is meh."
  end
end
# print debuggin' to test logic of above conditional
    # if 3 > 1 && 3 > 1 && 1 <= 1
    #   puts "Overall mood is  happy!"
    # elsif 1 > 3 && 1 > 1 && 3 <= 1
    #   puts "Overall mood is sad."
    # else 1 > 3 && 1 > 1 && 3 <= 1
    #   puts "Overall mood is meh."
    # end
##########################################################
# Data the program uses

# Assignments begin here
text = [
  "03/01 I'm having a terrible horrible no good day.",
  "03/13 Yesterday was horrible, but today is great! Yay!",
  "04/02 Sad Panda. #terribleday",
  "04/15 Hello World, today is fabulous! #yay",
  "05/01 Great! Yay! Good! Yay! Happy. Happy.",
  "05/11 Yay, yay, yay! I'm having a awfuly great day."
]

#########################################################
# Actual program

paragraph_stripped(text) # have to have input normalized for parsing
# loop to print out the date and the mood
# buiids array to be called by happys_days method
# CONSIDER changing to method
text.each do |item|
	puts item[0..5] + analyze_mood(item)
	#puts analyze_mood(text[0..text.size])
  #get_emotes = [] # when I use get_emotes I get undefined local variable or method `get_emotes' for main:Object (NameError) fix with @get_remotes
  #@get_emotes.push(analyze_mood(item))
  #@get_emotes.push(analyze_mood(item))
  #analyze_mood(item)
end

@get_emotes = []

text.each do |item|
  @get_emotes.push(analyze_mood(item))
  #puts get_emotes
end

happy_days(@get_emotes)
overall_mood(@get_emotes)
