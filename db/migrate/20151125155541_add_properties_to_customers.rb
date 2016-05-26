class AddPropertiesToCustomers < ActiveRecord::Migration
  def change

  	add_column :customers, :tier, :integer
  	add_column :customers, :mileage, :integer
  	add_column :customers, :expertise, :string


  end
end
