class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_id
      t.string :vehicle_number
      t.integer :vehicle_type
      t.string :brand
      t.string :model
      t.string :plaque
      t.string :chassi
      t.string :status
      t.string :responsible

      t.timestamps null: false
    end
  end
end
