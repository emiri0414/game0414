class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :customer_id, null: false
      t.integer :game_id, null: false
      t.string :score
      t.string :content

      t.timestamps
    end
  end
end
