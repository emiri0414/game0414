class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :genre_id, null: false
      t.integer :year_id, null: false
      t.string :production_date, null: false
      t.string :title, null: false
      t.string :image_id
      t.text :body, null: false

      t.timestamps
    end
  end
end
