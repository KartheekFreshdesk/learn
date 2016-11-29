class CreatePlayerPlayedGameDetails < ActiveRecord::Migration
  def change
    create_table :player_played_game_details do |t|
  		t.integer :played_game_id
  		t.integer :player_id
    	t.integer :earned_points

    	t.timestamps
    end
  end
end