class ChangeColumnGameIdToNil < ActiveRecord::Migration[8.1]
  def change
    change_column_null :conversations, :game_id, true
  end
end
