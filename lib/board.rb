class Board
	attr_accessor :board
	require './lib/game_piece.rb'


	def initialize
		@board = build_board
		set_game_pieces
	end

	def build_board
		row = []
		row.8.times.push(nil)
		puts "ROW:#{row.to_s}"
	end

	def set_game_pieces

	end
end