#Pig Latin takes the first consonant of an English word, moves it to the end of the word and suffixes an ay

puts "Please input your word into the Pig Latin Converter"
answer = gets.downcase.chomp

class PiglatinConverter
    
	# def initialize(answer)
	# #defining an instance variable
	# @answer=answer
	# end
    
	def self.convert(answer)
    x =[]
    answer.each_char do |v|
    if["a", "e", "i", "o", "u"].include?(v)
    break
    else
    x << v
end
end

if answer == ''
    return ''
    elsif answer == nil
    return nil
    elsif x.length == 0
    return answer + 'ay'
    else
    return answer[x.length..-1] + x.join('') + 'ay'
end
end

end

puts PiglatinConverter.convert(answer)