class ChangeColumnGameIdToDefault < ActiveRecord::Migration[8.1]
  def change
        change_column_default :conversations, :game_id, from: 0, to: nil
  end
end
