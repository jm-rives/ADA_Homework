FEELINGS = {
  happy: %w(yay good great), # this is an  "word array" literal of strings
  sad: %w(terrible awful horrible) # word array literal repeated
}

def analyze_mood(words) # method definition
  happy = 0 # variable assingment
  sad = 0 # variable assingment
  words.downcase! # data normalization
  words.split(" ").each do |word| # splits array on spaces
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

# Assignments begin here
text = [
  "03/01 I'm having a terrible horrible no good day.",
  "03/13 Yesterday was horrible, but today is great! Yay!",
  "04/02 Sad Panda. #terribleday",
  "04/15 Hello World, today is fabulous! #yay",
  "05/01 Great! Yay! Good! Yay! Happy. Happy.",
  "05/11 Yay, yay, yay! I'm having a awfuly great day."
]
# replace thise lines with a loop to print the date and the mood
text.each do |item| # this currently prints the dates well
	puts item[0..5]
end
