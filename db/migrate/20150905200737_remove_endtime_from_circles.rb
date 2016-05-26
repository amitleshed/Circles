class RemoveEndtimeFromCircles < ActiveRecord::Migration
   def up
    remove_column :circles, :end_time
  end

  def down
    add_column :products, :end_time, :datetime, null: false
  end
end
