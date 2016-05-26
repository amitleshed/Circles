class AddPropertiesToCustomer < ActiveRecord::Migration
  def change
  	  add_column :customers, :first_name, :string
  	  add_column :customers, :last_name, :string
  	  add_column :customers, :city, :string
  	  add_column :customers, :state, :string
  end
end
