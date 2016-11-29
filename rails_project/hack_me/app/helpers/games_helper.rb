module GamesHelper
  	@@STATE = { :WAITING => 0,
			  	:ON_GOING => 1,
			  	:CANCELLED => 2,
			  	:COMPLETED => 3 
			}

	def paginated_active_games
		@paginated_active_games = Game.active.paginate(page: params[:page], per_page: 20)
	end

	def active_games?
		Game.where(state: 1).exists?      #STATE[:ON_GOING]).exists?
	end

	def paginated_waiting_games
		@paginated_waiting_games = Game.waiting.paginate(page: params[:page], per_page: 20)
	end
	
	def waiting_games?
		Game.where(state: 0).exists?		#STATE[:WAITING]).exists?
	end
end