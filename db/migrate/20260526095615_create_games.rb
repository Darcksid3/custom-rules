class CreateGames < ActiveRecord::Migration[8.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :nb_players

      t.timestamps
    end
  end
end
