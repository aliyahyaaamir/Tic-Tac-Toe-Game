

class TicTac_Board
	attr_accessor :position, :board #:position_1, :position_2, :position_3, :position_4, :position_5, :position_6, :position_7, :position_8, :position_9, :board

	def initialize
		#test to see if integers make a difference
		# @position_1 = p1
		# @position_2 = p2
		# @position_3 = p3
		# @position_4 = p4
		# @position_5 = p5
		# @position_6 = p6
		# @position_7 = p7
		# @position_8 = p8
		# @position_9	= p9

		@position = {1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5",6 => "6",7 => "7",8 => "8", 9 => "9"}


		def hope

			@board = "#{@position[1]}	|	#{@position[2]}	|	#{@position[3]}\n_________________________________\n#{@position[4]}	|	#{@position[5]}	|	#{@position[6]} \n_________________________________\n#{@position[7]}	|	#{@position[8]}	|	#{@position[9]}"
		
		end
	end


end