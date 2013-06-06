require_relative "tictac_board"

class TicTacToe
	attr_accessor :new_board
	def initialize
		@new_board = TicTac_Board.new
	end

	def check_board(c)
		if ((@new_board.position[1] == c) && (@new_board.position[2] == c) && (@new_board.position[3] == c)) || \
			((@new_board.position[4] == c) && (@new_board.position[5] == c) && (@new_board.position[6] == c)) || \
			((@new_board.position[7] == c) && (@new_board.position[8] == c) && (@new_board.position[9] == c)) || \
			((@new_board.position[1] == c) && (@new_board.position[4] == c) && (@new_board.position[7] == c)) || \
			((@new_board.position[2] == c) && (@new_board.position[5] == c) && (@new_board.position[8] == c)) || \
			((@new_board.position[3] == c) && (@new_board.position[6] == c) && (@new_board.position[9] == c)) || \
			((@new_board.position[1] == c) && (@new_board.position[5] == c) && (@new_board.position[9] == c)) || \
			((@new_board.position[3] == c) && (@new_board.position[5] == c) && (@new_board.position[7] == c))
			return "win"
		end
	end

	def update_hash(p, c) 
		@new_board.position[p] = c

	end
end
