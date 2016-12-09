class StaticPagesController < ApplicationController

	def home
		if signed_in?
			#NEED REFACTORING TO MODELS.PlayedGames.
			if session[:created_game]
				@game = Game.find(session[:created_game])
				session[:created_game] = nil
			end			
			@users = User.order(rating: :desc).all
			@games_played_exists = PlayedGame.exists?
		end
	end
end