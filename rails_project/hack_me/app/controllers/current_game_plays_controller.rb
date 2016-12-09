class CurrentGamePlaysController < ApplicationController
		@no_of_moves = 0;

	# TODO refactor
	def update
		@no_of_moves +=1 ;
	  @current_game_play = params[:id]
	  # @player = User.find(params[:user])
	  if current_user == @game.users.first
	  	symbol = 1
	  else
	  	symbol = 2
	  end
	  @board = @current_game_play.board
	  @block = params[:block]

   	  @board.update(@block, symbol)
   	  if @no_of_moves == 9
   	  	#TODO change text to status(0, 1) 
   	  	render :text => "Game is draw", :status => 200 	  	
   	  # Check against the block that was recently played. Keep tracking
   	  elsif @player.won?(@board, @block)
   	  	render :text => "Player wins", :status => 200
   	  else
	  	render :nothing => true, :status => 200, :content_type => 'text/html'
   	  end

	end

end
