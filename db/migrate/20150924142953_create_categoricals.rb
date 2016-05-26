class CreateCategoricals < ActiveRecord::Migration
  def change
    create_table :categoricals do |t|
      t.integer :categorizable_id
      t.string :categorizable_type 
      t.timestamps null: false
    end
  end
end
