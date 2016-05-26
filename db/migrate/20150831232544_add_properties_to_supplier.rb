class AddPropertiesToSupplier < ActiveRecord::Migration
  def change
  	  add_column :suppliers, :first_name, :string
  	  add_column :suppliers, :last_name, :string
  	  add_column :suppliers, :city, :string
  	  add_column :suppliers, :state, :string
  end
end
