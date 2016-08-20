# #August 18th 2016
# Word-Guess Game
#
# Create a game which will allow the user to guess a word and get ASCII-art as feedback on their guesses.
#
# Learning Goals:
#
# Create a complex program from start to finish
# Use at least one class to encapsulate game functionality
# Use methods to encapsulate repeated sections of code
# Use instance variables and local variables where appropriate
# Use arrays to store information where appropriate
# Use variables to allow the game to be played with different words
# The Rules:
#
# The word to guess is represented by a row of dashes, giving the number of letters. If the guess is a letter or number which occurs in the word, the word should be updated in all of the correct positions. If the suggested letter or number does not occur in the word, the game should draw or remove one element of the visual representation as a tally mark. The game is over when:
#
# The player completes the word, or guesses the whole word correctly
# The diagram representing the tally marks is complete
# For example:
#
# (@)(@)(@)
#   ,\,\,|,/,/,
#      _\|/_
#     |_____|
#      |   |
#      |___|
#
# word: _ O _ D O _
# Baseline
#
# Determine what type of ASCII art your team would like to utilize - be creative!
# Think through how you think you should structure your code. Your code should utilize class(es) and methods to keep functionality contained.
# Create a program that will accept one user guess input and print it out in the terminal.
# Primary Requirements
#
# Game play
#
# The user should be able to input a single letter at a time.
# Between each guess, the board should be redrawn to the terminal output (Ascii art!).
# Display the letters that have already been guessed before each player guesses a new letter.
# The user should be able to win or lose.
# Technical
#
# You should be able to play your game by running it using ruby from the terminal.
# Use classes to contain your game logic. You may be able to implement your solution using just one class, but consider how isolating related functionality into separate classes may increase your code's readability and maintainability (single responsibility principle).
# Optional Requirements
#
# Use the colorize gem to make pieces of the ASCII art a different colors.
# Handle inappropriate user input. For example, what happens when a user enters an exclamation point.
# Ensure the user is not penalized for guessing the same letter more than once.
# Allow the user to choose their difficulty level: higher levels will have words or phrases with more letters. You determine the specific logic that will determine a low, medium, high level.
# Allow the program to accept the whole word as input from the user. If the word is guessed correctly, the user will win. Otherwise, it will be treated as another guess.
################################################################
require "faker"

class Game
  attr_reader :word

  def initialize(level)
    @word = assignWord(level)


  end

# TODO: jm-rives place bug methods here

# assign the word based on the difficulty level
  def assignWord(level)
    if level == "1"
      begin
        @assignedword = Faker::Hipster.word
      end until @assignedword.length <= 6
      # infinte loop if database without words > 8 letters
    elsif level == "2"
      begin
        @assignedword = Faker::Hipster.word
      end until @assignedword.length > 6 && @assignedword.length <= 10
    elsif level == "3"
      begin
        @assignedword = Faker::Hipster.word
      end until @assignedword.length > 10
    end
    return @assignedword
  end

end

####### MAIN PROGRAM #########
# Does this refer to the word returned by FAKER or the word the user guessess?
#separate each letter into an array 
def wordArray(guessword)
  word_array = []

  guessword.length.times do |letter|
    word_array << guessword[letter]
  end
  return word_array
end

# Is the output array the array that shows the users correct guessess on the boardd? 
#generate an output array with the same length as the word array
def outputArray(word)
  Array.new(word.length, "_")
end

#prompt the user to make a guess
def prompt(output_array, unmatch_array, word)
  puts "\nGuess a letter."
  letter = gets.chomp.downcase
  if letter =~ /[A-Za-z]/ || letter == " "
  else
    puts "Incorrect input. Try again."
    prompt(output_array, unmatch_array, word)
  end

#verify if a string entered by the user is equal to the word
  if letter == word
    puts "You have won the game!"
# TODO: jm-rives enter ascii reward text here
    exit
  end

#verify if user's guess has already been entered.
  output_array.each do |e|
    if letter == e
      puts "This character has been entered."
      prompt(output_array, unmatch_array, word)
    end
  end

#verify if the user's guess has already been entered (in the unmatch_array)
  unmatch_array.each do |ea|
    if letter == ea
      puts "This character has already been entered."
      prompt(output_array, unmatch_array, word)
    end
  end
  return letter
end

def display(output_array)

  output_array.each do |i|
    print "#{i} "
  end
# TODO jm-rives puts bug build and seg build here?
end

def match_letter(word_array, letter, output_array)
  word_array.length.times do |i|
    if word_array[i] == letter
      output_array[i] = letter
    end
  end
  return output_array
# TODO jm_rives OR puts bug build here and seg build here, bind seg buiild to out put array length?
end

#generate an array for all the unmatched letters that the user entered
def unmatch_letter(word_array, letter, unmatch_array)

  word_array.length.times do |i|
    if word_array[i] == letter
      return 1
    end
  end

  return letter
end


##### USER INTERFACE CODE #####

play = "y"

while play == "y"
  puts "Welcome to the Word Guess Game!"

  begin
    puts "Please enter the difficulty level (1, 2, 3)."
    puts "1 - easy"
    puts "2 - medium"
    puts "3 - difficult"
    level = gets.chomp
  end until level == "1" || level == "2" || level == "3"


  game = Game.new(level)
  word_array = wordArray(game.word)
  output_array = outputArray(game.word)
  print "Word: "
  display(output_array)
  puts ""

  unmatch_array = []

  (word_array.length + 2).times do |chance|
    puts "You have #{(word_array.length + 2)-chance} chance(s)."
    character = prompt(output_array, unmatch_array, game.word) # output_array and unmatch_array are passed to the method to keep track of all the characters that have been entered by the user. If a repeated character is entered, the user will not be penalized. The number of chances remain the same. The user is allowed to enter a string. If the string == the word, the user has won the game. "game.word" is passed to the method to verify if the string entered by the user is equal to the word.
    output_array = match_letter(word_array, character, output_array)
    print "Word: "
    display(output_array)
    puts ""

    if unmatch_letter(word_array, character, unmatch_array) == 1
    else
      print "Incorrect letters: "
      unmatch_array << unmatch_letter(word_array, character, unmatch_array)

      display(unmatch_array)
      puts ""
    end

    if output_array === word_array
      puts "You have won the game!"
      exit
    end
  end

  puts "\nYou lost!"
  puts "The correct word is: #{(game.word).upcase}"
  puts "Do you want to try again? Enter \"y\" to play again."
  play = gets.chomp.downcase
end
