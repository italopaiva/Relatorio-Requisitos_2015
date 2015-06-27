class AddPatentColumnForDriver < ActiveRecord::Migration
  def change
  	add_column :drivers, :driver_patent, :string
  end
end
