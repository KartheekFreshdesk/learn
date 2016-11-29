
class User < ActiveRecord::Base
	attr_accessible :email, :name, :password, :password_confirmation
	has_secure_password

	#associatons
	# has_many :played_games, :foreign_key => "player_id", dependent: :destroy

	has_many :current_game_plays, :foreign_key => "current_player_id", dependent: :destroy
	has_many :current_game_plays, :foreign_key => "first_player_id", dependent: :destroy
	has_many :current_game_plays, :foreign_key => "second_player_id", dependent: :destroy

	has_many :player_played_game_details, :foreign_key => "player_id", dependent: :destroy
 	has_many :played_games, :through => :player_played_game_details 

	# IMP   CHECK.
	has_and_belongs_to_many :games

	#before save
	before_save { |user| user.email = email.downcase }
	before_save :create_remember_token

	#validations
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:   true,
	                format:     { with: VALID_EMAIL_REGEX },
	                uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true

	private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end