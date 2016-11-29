class CurrentGamePlay < ActiveRecord::Base
  # attr_accessible :title, :body

	belongs_to :game
	belongs_to :current_player, class_name: "User"
	belongs_to :first_player, class_name: "User"
	belongs_to :second_player, class_name: "User"
	belongs_to :board
end