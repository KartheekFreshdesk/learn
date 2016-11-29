class PlayedGame < ActiveRecord::Base
  # attr_accessible :title, :body

 	belongs_to :game
    has_many :player_played_game_details, :foreign_key => "player_game_id", dependent: :destroy
 	has_many :played_games, :through => "player_played_game_details" 
 	
	
end

# attr_accessible: game_id, user_id  #player_id
# attr_accessible: all


# User.first.played_games << Game.first
# User.first.games << Game.first
# PlayedGames.new(game_id: g.id, user_id: u.id, result: 0, gained_score: 100)