require_relative "tic_tac_toe"

class TicTacRunner
	XOS = {"Player 1" => "X", "Player 2" => "O"}

	class InvalidNumberException < Exception
	end

	def tictac_run
		game = TicTacToe.new
		players = ["Player 1", "Player 2"]
		current_player = "Player 1"
		puts "Welcome to Tic Tac Toe!"
		counter = 9
		while (counter != 0)
			puts game.new_board.draw_board
			puts "#{current_player} choose your position: "
			s = gets.chomp
			begin

				if s.to_i == 0
					players.reverse!
					current_player = players[0]
					raise InvalidNumberException, "Invalid Number Folks!!"
				elsif s.length > 1
					players.reverse!
					current_player = players[0]
					raise InvalidNumberException, "Invalid Number Folks!!"
				elsif (game.new_board.position[s.to_i] == "X") || (game.new_board.position[s.to_i] == "O")
					players.reverse!
					current_player = players[0]
					raise InvalidNumberException, "Invalid Number Folks!!"
				else
					player_input = s.to_i
					counter -= 1
					game.update_hash(player_input, XOS[current_player])
				end
			rescue InvalidNumberException => e
				puts e.message
			end
			check = game.check_board(XOS[current_player])
			if check == "win"
				puts game.new_board.draw_board
				return puts "You have won!!!"
			end
			players.reverse!
			current_player = players[0]
		end

		puts "Tie Game! Play again and dominate the other player!"

	end

	def fix_input(s)
		if s.to_i == 0
			raise InvalidNumberException, "Invalid Number Folks!!"
		elsif s.length > 1
			raise InvalidNumberException, "Invalid Number Folks!!"
		elsif (game.new_board.position).has_value? (s.to_i)
			raise InvalidNumberException, "Invalid Number Folks!!"
		else
			return s.to_i
		end
	end
end


b = TicTacRunner.new
b.tictac_run

