class GamesController < ApplicationController

	def new 
		@game = Game.create
		flash[:success] = "Game started. Waiting for the player."
	    redirect_to root_url
	end

	def show 
		byebug
	end
end