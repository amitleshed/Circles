class ChangesInCustomercircle < ActiveRecord::Migration
  def change
  	add_column :customer_circles, :customer_id, :integer
  	add_column :customer_circles, :circle_id, :integer
  end
end
