class Tictactoe
	attr_accessor :array, :board

	def initialize()
		@array = [1,2,3,4,5,6,7,8,9]
		@board = board
	end

	def board
	  puts "#{array[0]}, #{array[1]}, #{array[2]}"
	  puts "#{array[3]}, #{array[4]}, #{array[5]}"
	  puts "#{array[6]}, #{array[7]}, #{array[8]}"
	end

	def win?
		array.values_at(0,1,2).uniq.length == 1 ||
		array.values_at(0,3,6).uniq.length == 1 ||
		array.values_at(2,5,8).uniq.length == 1 ||
		array.values_at(6,7,8).uniq.length == 1 ||
		array.values_at(1,4,7).uniq.length == 1 ||
		array.values_at(3,4,5).uniq.length == 1 ||
		array.values_at(0,4,8).uniq.length == 1 ||
		array.values_at(2,4,6).uniq.length == 1 
	end

	def winner
		who = [array.values_at(0,1,2), array.values_at(0,3,6), array.values_at(2,5,8), array.values_at(6,7,8), array.values_at(1,4,7), array.values_at(3,4,5), array.values_at(0,4,8), array.values_at(2,4,6)]
		z = "Player 1"
		y = "Player 2"
		who.each do |v| 
			if v == ["X","X","X"] 
				return z
			elsif v == ["O", "O", "O"]
				return y
			end
		end
	end

	def tie?
		!win? && array.reject {|i| i.class == String}.length == 0
	end

	def play_player_1
		print "Player 1, please play by picking a number"
		answer = gets.chomp.to_i
		array[answer-1] = "X"
		puts board
	end

	def play_player_2
		print "Player 2, please play by picking a number"
		answer2 = gets.chomp.to_i
		array[answer2-1] = "O"
		puts board
	end

	def turn
		toggle = false

		until win? || tie?
			toggle = !toggle
			if toggle
			play_player_1	
			else
			play_player_2			
			end
		end

		if win?
			puts "Congrats #{winner}!"
		else
			puts "It's a tie! Try again!"
		end


	end
end


a = Tictactoe.new
puts a.turn


# Functionality we still want to add
# possibility that person types more then one number
# also, number typed has to be in range of 1-9
# make sure players can't use the same number








