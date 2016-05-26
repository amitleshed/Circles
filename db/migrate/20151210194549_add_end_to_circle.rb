class AddEndToCircle < ActiveRecord::Migration
  def change
  	add_column :circles, :end_time, :datetime
  	remove_column :products, :end_time
  end
end
