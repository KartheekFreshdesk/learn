class CurrentGamePlay < ActiveRecord::Base
  #NEED TO KNOW WHICH TO BE INCLUDED.
  # attr_accessible :title, :body

  belongs_to :game
  belongs_to :board
  has_and_belongs_to_many :users

end