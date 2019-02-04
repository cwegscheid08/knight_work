class Knight < GamePieces
	attr_reader :move_type

	def initialize(location)
		super
		@move_type = [[2,1],[2,-1],[-2,1],[-2,-1],[1,2],[-1,2],[1,-2],[-1,-2]]
	end

	def knight_moves(destination)
		# puts "LOCATION:#{self.location} DESTINATION:#{destination}"
		available_moves(destination)
	end

	def available_moves(destination, spot = @location, next_jumps = [], trail = {})
		# puts "TWO UP AND ONE OVER!"
		super
	end 

end