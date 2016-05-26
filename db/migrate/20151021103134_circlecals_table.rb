class CirclecalsTable < ActiveRecord::Migration
  def change
  	add_column :circlecals, :circle_id, :integer
  	add_column :circlecals, :circleable_id, :integer
  	add_column :circlecals, :circleable_type, :string
  end
end
