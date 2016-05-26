class ChangeCustomersAgain < ActiveRecord::Migration
  def change

  	change_column :customers, :email, :string, null: false
  end
end
