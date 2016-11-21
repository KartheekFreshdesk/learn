class Micropost < ActiveRecord::Base
  #IMP micropost can be reassigned to any other user. What to do?
  attr_accessible :content
  belongs_to :user

  validates :content, presence: true, length: { maximum: 140}
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end
