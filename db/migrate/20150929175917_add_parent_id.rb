class AddParentId < ActiveRecord::Migration
  def change
  	add_column :categories, :parent_id, :integer
  	add_column :categories, :name, :string
  end
end
