class RemoveColumnFromCustomRules < ActiveRecord::Migration[8.1]
  def change
    remove_column :custom_rules, :theme
  end
end
