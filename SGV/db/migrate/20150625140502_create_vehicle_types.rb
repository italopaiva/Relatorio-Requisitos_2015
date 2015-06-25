class CreateVehicleTypes < ActiveRecord::Migration
  def change
    create_table :vehicle_types do |t|
      t.integer :type_id
      t.string :type_name
      t.string :type_prefix
      t.string :fuel_type

      t.timestamps null: false
    end
  end
end
