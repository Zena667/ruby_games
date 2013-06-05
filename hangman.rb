
	
#class Hangman	
puts
puts
puts "Welcome to Hangman."
puts
puts  
list = ["canada", "england", "australia", "japan"]
chosen_word = list.sample(1).join

letter_array = chosen_word.split(//)
underscore_array = letter_array.map { |x| x = " _ " }
print underscore_array.join
puts
puts
puts


puts "please give me a letter"
answer = gets.chomp




def matching(answer, letter_array) 

	if letter_array.include?(answer)
		letter_array.index(answer)
		letter_array
	else
		puts "sorry no match, enter another letter"
	end
end


puts matching(answer, letter_array)


# 	

# answer.each_char do |v|
# 	word_array=answer.to_a
# 	if v == 




	
	
	
	
	
	
	
	
	
		
  		# y = x * "_"
#   		puts y.to_s
#   	end
# end
# 
# one = Hangman.new
# puts one.dash_count