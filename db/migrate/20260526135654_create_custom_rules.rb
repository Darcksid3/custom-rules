class CreateCustomRules < ActiveRecord::Migration[8.1]
  def change
    create_table :custom_rules do |t|
      t.string :name
      t.text :content
      t.string :theme
      t.references :conversation, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
