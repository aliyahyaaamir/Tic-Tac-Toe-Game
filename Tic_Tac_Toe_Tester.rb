require "test/unit"
require "./tictac_board"

class TicTacTester < Test::Unit::TestCase

	def setup
		@tictacboard = TicTac_Board.new
	end

	def test_initialize_tictac_board

		assert @tictacboard.position.is_a?(Hash)

	end

	def test_draw_board

		assert @tictacboard.board.include? " "
	end




end