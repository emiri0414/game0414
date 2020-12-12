class AddProfieltoCustomers < ActiveRecord::Migration[6.0]
  def change
  	add_column :customers , :profiel, :string
  end
end
