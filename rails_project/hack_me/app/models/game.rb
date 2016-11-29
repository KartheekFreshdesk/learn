class Game < ActiveRecord::Base
  @@STATE = { :WAITING => 0,
  			  :ON_GOING => 1,
  			  :CANCELLED => 2,
  			  :COMPLETED => 3 
  			}

  attr_accessible :state

  #associations
  has_one :played_games 
  has_one :current_game_play 

  # IMP CHECK
  has_and_belongs_to_many :users


  #absolutely wrong. NEED TO CHECK, KNOW
	def self.active 
		@active_games = Game.where(state: 1) # STATE[:ON_GOING])
	end

	def self.waiting 
		@waiting_games = Game.where(state: 0) # STATE[:WAITING])
	end
end