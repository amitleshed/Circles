class ChangePriceType < ActiveRecord::Migration
  def change
  	reversible do |dir|
  		dir.up do 
  			change_column :products, :price, :decimal
  		end

  		dir.down { raise ActiveRecord::IrreversibleMigration }
  	end
  end
end
