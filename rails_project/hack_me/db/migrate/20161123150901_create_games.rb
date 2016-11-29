class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :state, :limit  => 5, :default => 0

      t.timestamps
    end
  end
end