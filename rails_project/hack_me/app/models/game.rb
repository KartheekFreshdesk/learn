class Game < ActiveRecord::Base

  # CLASS CONSTANTS. INDIRECT GLOBAL ACCESS. BUT SHOULD IT BE PLACED IN CONFIG.
  STATE = { :WAITING => 0,
  			  :ON_GOING => 1,
  			  :CANCELLED => 2,
  			  :COMPLETED => 3 
  			}
  
  attr_accessible :state

  #associations
  has_one :played_games 
  has_one :current_game_play 

  has_and_belongs_to_many :users

  scope :active,  :conditions => { state: STATE[:ON_GOING] }
  #->scope :active -> { where(state: Game::STATE[:ON_GOING]) }
  scope :waiting,  :conditions => { state: STATE[:WAITING] }  

  def update_state
    self.state = self.state + 1 if self.state < 3
  end
  
  def first_player?(current_user)
    current_user == self.users.first
  end
end