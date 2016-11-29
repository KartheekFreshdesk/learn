class CreateCurrentGamePlays < ActiveRecord::Migration
  def change
    create_table :current_game_plays do |t|
      t.integer :game_id
      t.integer :first_player_id
      t.integer :second_player_id
      t.integer :board_id
      t.integer :current_player_id
      
      t.timestamps
    end
  end
end
