class AddAttributeToUser < ActiveRecord::Migration
  def change
    add_column :users, :profession, :string
    add_column :users, :family_status, :string
  end
end
