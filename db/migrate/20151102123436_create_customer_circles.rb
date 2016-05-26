class CreateCustomerCircles < ActiveRecord::Migration
  def change
    create_table :customer_circles do |t|

      t.timestamps null: false
    end
  end
end
