class GamePieces
	attr_reader :location, :move_type, :knight, :next_available_move

	require './lib/knight.rb'

	def initialize(location = nil)
		@location = location
		@move_type = move_type
	end

	def available_moves(destination, spot = @location, next_jumps = [])
		return spot if spot[0] == destination[0] && spot[1] == destination[1]

		

		move_type.each do |jump|
			temp_spot = []
			# puts "JUMP:#{jump} SPOT:#{spot} LOCATION:#{@location}"
			temp_spot[0] = jump[0] + spot[0]
			temp_spot[1] = jump[1] + spot[1]
			
			# puts "JUMP:#{jump} SPOT:#{spot} TEMP_SPOT:#{temp_spot} LOCATION:#{@location}"
			on_board?(temp_spot) ? next_jumps.push(temp_spot) : ""
			if temp_spot[0] == destination[0] && temp_spot[1] == destination[1]
				puts next_jumps.to_s
				return temp_spot
			end
			
			# on_board?(temp_spot) ? available_moves(destination, temp_spot) : "" 
		end

		# puts "NEXT_JUMPS:#{next_jumps}"
		available_moves(destination, next_jumps.shift, next_jumps)

	end

	def on_board?(jump)
		# puts "JUMP:#{jump}"
		# puts jump[0] >= 0 && jump[0] <= 7 && jump[1] >= 0 && jump[1] <= 7
		if jump[0] >= 0 && jump[0] <= 7 && jump[1] >= 0 && jump[1] <= 7
			return true
		end
		false
	end

	def place_pieces
		@knight = Knight.new([3,3])
		# puts "KNIGHT:#{@knight} MOVE_TYPE:#{@knight.move_type}"
	end

end