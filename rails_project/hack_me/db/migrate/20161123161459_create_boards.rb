class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
	  t.string :squares, array: true, default: [0]*9
    		
      t.timestamps
    end
  end
end

# NEED TO GIVE DEFAULT VALUES.IMP DIDNT IMPLEMENT.

# STRING OPS AND STRING BUFFER.
# http://stackoverflow.com/questions/31916448/how-do-i-serialize-an-array-field-into-mysql