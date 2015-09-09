# Wrapped: look up!
module BingoboardHelper
	def check(bingoboard)
		nums_on_board_arr = []
		bingoboard.each do |row|
			row.each do |number|
				nums_on_board_arr << number
			end
		end
		bingo_letters = %w[B I N G O]
		number = nums_on_board_arr.sample # rand(100)+1
		letter = bingo_letters.sample
		column = nil
		if letter == "B"
		    column = 0
		elsif letter == "I"
		    column = 1
		elsif letter == "N"
		    column = 2
		elsif letter == "G"
		    column = 3
		elsif letter == "O"
		    column = 4
		end

		answer = []
		# check each row in column for number
		for i in 0..4
			if bingoboard[i][column] == number
				bingoboard[i][column] = "X"
				answer << column << i
			end
		end
		if answer == []
			answer << letter << number
		end
		return answer
	end

	def check_win(bingoboard)
		for row in 0..4
			count = 0
			for column in 0..4
				if bingoboard.tags[row][column] == "X"
					count += 1
				end
			end
			if count == 5
				bingoboard.win = true
				break
			end
		end
		for column in 0..4
			count = 0
			for row in 0..4
				if bingoboard.tags[row][column] == "X"
					count += 1
				end
			end
			if count == 5
				bingoboard.win = true
				break
			end
		end
		return bingoboard.win
	end
end