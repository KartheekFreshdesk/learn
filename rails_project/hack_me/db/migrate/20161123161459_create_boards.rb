class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
	  t.text :squares  #:default => [0, 0, 0, 0, 0, 0, 0, 0, 0].to_yaml
      t.timestamps
    end
  end
end

# NEED TO GIVE DEFAULT VALUES.IMP DIDNT IMPLEMENT.

# STRING OPS AND STRING BUFFER.
# http://stackoverflow.com/questions/31916448/how-do-i-serialize-an-array-field-into-mysql