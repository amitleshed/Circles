class RemoveSupplierIdFromCircle < ActiveRecord::Migration
  def change

  	remove_column :circles, :supplier_id
  end
end
