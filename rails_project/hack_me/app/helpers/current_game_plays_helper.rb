module CurrentGamePlaysHelper

	def crete_new_game_play
		# TODO Needs refactor. Required before every game play creation.
		@game = Game.find(params[:id])
		@board = Board.create

		@current_game = CurrentGamePlay.create
		# DBT why both.
		@current_game.game = @game
		@game.current_game_play = @current_game
		@current_game.board = @board
		
		@current_game.users << current_user
		@current_game.save
	end
	
end
