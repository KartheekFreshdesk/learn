class GamesController < ApplicationController

	def new 
		@game = Game.create
		current_user.games << @game
		send_message_to_redis(@game.id)
		flash[:success] = "Game started. Waiting for the player."
		session[:created_game] = @game.id
	    redirect_to root_url
	end

	#TODO. Is it required?
	def update
		# @game = Game.find(params[:id])
			# @game.state = 1
			# @game.save
			# head: ok
		render :nothing => true, :status => 200, :content_type => 'text/html'
	end

	#NEED TO BE REFACTORED TO MODELS.
	#NEED TO DO. THE STATE CHANGE AND EVEN CHECK IF THE GAME IS CREATED AND LIVE.
	def show 

		if @game.state == 0
			@game.update_state
			@current_game = create_new_game_play
			
		#Here the check for next user is to be done on current_user in  @game.users 
		elsif @game.state == 1 && @game.users.include?(current_user) && @game.users.count <= 2
			@current_game = @game.current_game_play
			@current_game.users << current_user
			@current_game.save
		else
			#render the view page showing the game play.		
		end
	end
end