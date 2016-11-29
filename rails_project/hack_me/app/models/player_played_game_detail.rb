class PlayerPlayedGameDetail < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :played_game
  belongs_to :player, class_name: "User"
end
