

class TicTac_Board
	attr_accessor :position, :board

	def initialize

		@position = {1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5",6 => "6",7 => "7",8 => "8", 9 => "9"}

	end

		def draw_board

			@board = "#{@position[1]}	|	#{@position[2]}	|	#{@position[3]}\n_________________________________\n#{@position[4]}	|	#{@position[5]}	|	#{@position[6]} \n_________________________________\n#{@position[7]}	|	#{@position[8]}	|	#{@position[9]}"
		
		end


end