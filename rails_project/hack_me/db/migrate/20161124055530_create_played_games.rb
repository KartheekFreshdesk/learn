class CreatePlayedGames < ActiveRecord::Migration
  def change
    create_table :played_games do |t|
      t.integer :game_id
      t.integer	:result

      t.timestamps
    end
  end
end




# Result. Should it be like draw or not ?