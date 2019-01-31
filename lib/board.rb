class Board
	attr_accessor :board, :pieces
	require './lib/game_pieces.rb'


	def initialize
		@board = build_board
		set_game_pieces
	end

	def build_board
		row = {}
		column = {}
		x = 0
		y = 0
		8.times do
			8.times do 
				row[[x,y]] = nil
				y+=1
			end
			y = 0
			column["Row #{x}"] = row
			row = {}
			x+=1
		end
		@board = column
	end

	def set_game_pieces
		@pieces = GamePieces.new()
		@pieces.build_pieces
		@pieces.knight.available_moves
	end
end