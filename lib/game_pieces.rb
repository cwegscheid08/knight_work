class GamePieces
	attr_reader :location, :move_type, :knight, :next_available_move

	require './lib/knight.rb'

	def initialize(location = nil, move_type = nil)
		@location = location
		@move_type = move_type
	end

	def available_moves(jump = self.move_type)
		puts "JUMP:#{jump}\n"
		# return jump if jump[0][0] < 0 || jump [0][0] > 7
		# return jump if jump[0][1] < 0 || jump [0][1] > 7
		return jump if jump.size == 1

		left_jump = available_moves(jump.slice!(0, jump.size/2))
		right_jump = available_moves(jump)

		puts "LOCATION:#{@location}"

		spot = @location

		spot[0]+=left_jump[0][0]
		spot[1]+=left_jump[0][1]

		if spot[0] > 0 && spot[0] < 7 && spot[1] > 0 && spot[1] < 7
			@next_available_move = spot
		end
		puts "SPOT:#{spot} LEFT_JUMP:#{left_jump} RIGHT_JUMP:#{right_jump} LOCATION:#{@location}"

		spot = @location

		puts "SPOT:#{spot}"

		spot[0]+=right_jump[0][0]
		spot[1]+=right_jump[0][1]

		if spot[0] > 0 && spot[0] < 7 && spot[1] > 0 && spot[1] < 7
			@next_available_move = spot
		end
		puts "SPOT:#{spot} LEFT_JUMP:#{left_jump} RIGHT_JUMP:#{right_jump}"

		puts "JUMP:#{jump} NEXT_AVAILABLE_MOVE#{next_available_move}"
		spot
	end

	def build_pieces
		@knight = Knight.new([3,3])
		puts "KNIGHT:#{@knight} MOVE_TYPE:#{@knight.move_type}"
	end

end