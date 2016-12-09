class CreateCurrentGamePlays < ActiveRecord::Migration
  def change
    create_table :current_game_plays do |t|
      t.integer :game_id
      t.integer :board_id
      t.integer :current_player, :default => 1
      
      t.timestamps
    end
  end
end
