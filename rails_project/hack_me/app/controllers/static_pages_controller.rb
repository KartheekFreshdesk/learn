class StaticPagesController < ApplicationController

	def home 
		if signed_in?
			#NEED REFACTORING TO MODELS.PlayedGames.
			@users = User.order(rating: :desc).all
			@games_played_exists = PlayedGame.exists?
		end
	end
end