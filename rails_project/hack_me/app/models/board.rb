class Board < ActiveRecord::Base
	serialize :squares, Array 

	after_initialize :create_default_values

	has_one :current_game_play
	
	def update(block, symbol)
		self.squares[block] = symbol
	end

	# TODO Refactor
	def complete_on(index_changed)
		value_at_index = self.squares[index_changed]
		col = index_changed%3
		row = index_changed%3	
		
		# col check	
		for	i in 0..2
			break if squares[i*3 + col] != value_at_index
			return 1 if i == 2
		end

		# row check
		for	i in 0..2
			break if squares[row*3 + i] != value_at_index
			return 1 if i == 2
		end
		# Diagonal check
		if index_changed%2 == 0
			for i in 0..2 
				break if squares[i*4] != value_at_index
				return if i == 2
			end

			for i in 1..2
				break if squares[i*2] != value_at_index
				return if i == 2
			end
		end

		return 0
	end

	
	private
		def create_default_values
			self.squares = [0, 0, 0, 0, 0, 0, 0, 0, 0]
		end

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

# Rails serialize option takes your object (in this case an Array) and converts it into YAML. 
# You can override this (store as JSON or XML,even Gzip the contents) but it's still Rails specific.