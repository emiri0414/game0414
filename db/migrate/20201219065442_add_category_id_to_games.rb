class AddCategoryIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :category_id, :integer
  end
end
