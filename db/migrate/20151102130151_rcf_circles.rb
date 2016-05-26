class RcfCircles < ActiveRecord::Migration
  def change
  	remove_column :circles, :customer_id
  end
end
