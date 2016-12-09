class CreateCurrentGamePlaysUsers < ActiveRecord::Migration
  def change
  	create_table :current_game_plays_users, id: false do |t|
  		t.references :current_game_play
  		t.references :user
  	end
  end
end
