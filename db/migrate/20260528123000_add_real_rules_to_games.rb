class AddRealRulesToGames < ActiveRecord::Migration[8.1]
  def change
    add_column :games, :real_rules, :text
  end
end
