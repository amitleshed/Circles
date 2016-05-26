class CreateCirclecals < ActiveRecord::Migration
  def change
    create_table :circlecals do |t|

      t.timestamps null: false
    end
  end
end
