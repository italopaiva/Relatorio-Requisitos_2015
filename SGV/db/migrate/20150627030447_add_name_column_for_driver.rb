class AddNameColumnForDriver < ActiveRecord::Migration
  def change
  	add_column :drivers, :driver_name, :string
  end
end
