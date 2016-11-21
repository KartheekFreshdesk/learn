class Micropost < ActiveRecord::Base
  #IMP micropost can be reassigned to any other user. What to do?
  attr_accessible :content
  belongs_to :user

  validates :content, presence: true, length: { maximum: 140}
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'

	def self.from_users_followed_by(user)
      # IMP the below line
      # followed_user_ids = user.followed_user_ids
      # Here join is being used. But for a single user followed_by doesnt 
      # require many
        followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"

    	where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
    end

end
