class ChangeDataTypeForDriverId < ActiveRecord::Migration
  def change
  	change_table :drivers do |t|
      t.change :driver_id, :string
    end
  end
end
