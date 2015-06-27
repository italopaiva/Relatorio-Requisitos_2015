class DropVehicleTypeId < ActiveRecord::Migration
  def change
  	remove_column :vehicle_types, :type_id
  end
end
