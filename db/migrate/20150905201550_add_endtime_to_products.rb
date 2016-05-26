class AddEndtimeToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :end_time, :datetime
  end
end
