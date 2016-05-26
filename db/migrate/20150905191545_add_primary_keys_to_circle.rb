class AddPrimaryKeysToCircle < ActiveRecord::Migration
  def change
  	add_column :circles, :customer_id, :integer
    add_column :circles, :supplier_id, :integer
    add_column :circles, :product_id, :integer
    add_column :circles, :end_time, :datetime
    add_index :circles, [:customer_id, :product_id, :supplier_id], unique: true
  end
end
