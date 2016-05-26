class ProductChange < ActiveRecord::Migration
  def change
  	add_column :products, :end_time, :datetime
  	remove_column :circles, :end_time
  end
end
