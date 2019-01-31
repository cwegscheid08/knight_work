class Knight < GamePieces
	attr_reader :move_type

	def initialize(location)
		super
		@move_type = [[2,1],[2,-1],[-2,1],[-2,-1],[1,2],[-1,2],[1,-2],[-1,-2]]
	end

	def knight_moves

	end

	def available_moves(jump)
		# puts "TWO UP AND ONE OVER!"
		super
	end 

end