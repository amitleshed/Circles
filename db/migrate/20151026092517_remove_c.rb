class RemoveC < ActiveRecord::Migration
  def change
  	remove_column :products, :category_category
  end
end
