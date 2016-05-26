class AddColumn < ActiveRecord::Migration
  def change
  	add_column :categoricals, :category_id, :integer
  end
end
