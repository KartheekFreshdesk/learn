class CreateUsers < ActiveRecord::Migration
  def up
  	create_table :users do |t|
  		t.string :name
  		t.string :email
  		t.string :password_digest
  		t.boolean :is_admin, default: false
  		t.string :remember_token 
      t.integer :rating
  		t.timestamps
  	end
  	add_index :users, :email
    add_index :users, :remember_token
  end

  def down
  end
end


# Cumulative rating of all games is here and its pre computed.