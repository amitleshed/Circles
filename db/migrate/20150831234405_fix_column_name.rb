class FixColumnName < ActiveRecord::Migration
  def change
  	change_table :products do |t|
      t.rename :user_id, :supplier_id
  end
end
end
