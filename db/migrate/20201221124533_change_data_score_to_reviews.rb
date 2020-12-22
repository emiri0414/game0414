class ChangeDataScoreToReviews < ActiveRecord::Migration[6.0]
  def change
  	change_column :reviews, :score, :float
  end
end
