class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :customer_id, null: false
      t.integer :game_id, null: false

      t.timestamps
    end
  end
end
