class Board < ActiveRecord::Base
	serialize :squares

	has_one: current_game_play
	
	def update(block, symbol)

	end		#NEEDS TO CHECK IF THIS NEEDS TO BE IN CONTROLLER

end


# SERIALIZE-------

# class Comment < ActiveRecord::Base
#   serialize :stuff
# end

# comment = Comment.new  # stuff: nil
# comment.stuff = ['some', 'stuff', 'as array']
# comment.save
# comment.stuff
# serialize :squares

# or 
#   before_save :default_values
#   def default_values
#     self.status ||= 'P'
#   end

# Rails serialize option takes your object (in this case an Array) and converts it into YAML. You can override this (store as JSON or XML,even Gzip the contents) but it's still Rails specific.