class ChangeColumnToNull < ActiveRecord::Migration[6.0]
  def up
 	change_column_null :reviews, :game_id, true
  end
  def down
  	change_column_null :reviews, :game_id, false
  end
end
