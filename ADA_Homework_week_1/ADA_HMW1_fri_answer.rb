# improve ask method from "Learn to Program" by Chris Pine  https://pine.fm/LearnToProgr
# SPEC - improved ask method. That ask method I showed you was OK, but I bet youcould do better. Try to clean it up by [x]removing the answer variable. [x] I just changed the looop.  You’llhave to use return to exit from the loop. (Well, it will get you out of the whole method, but it will get you out of the loop in the process.) How doyou like the resulting method? [x] I like it. It lets me drives the answer method from any question array I want to pass. I usually try to avoid using return (a personalpreference), but I might make an exception here
# gist https://gist.github.com/jm-rives/1ec03a26100280460dfda878372c66b3
question_array = [
"Do you rank Sir Arthur Conan Doyle with Asimov and Tolkien?",
  "Are you versed in all the Sir Arthur Conan Doyle works, both imitative and canonical?",
  "Have you pondered ev’ry problem with didactic objectivity?"
  ]

 def answer(inquiry)
 	affirmative = []
 	negative = []

	 inquiry.each do |question| # outputs question array as desired

	 	puts question
	 	reply = gets.chomp.downcase
 		if reply == "yes"
 			affirmative.push(reply)
 		elsif reply == "no"
 			negative.push(reply)
 		else
 			puts "Please enter 'yes' or 'no' for your answers" # handles errors appropriatly
 			redo
		end
	puts "You entered #{affirmative.size} affirmative answers and #{negative.size} negative answers."
end
answer(question_array)
