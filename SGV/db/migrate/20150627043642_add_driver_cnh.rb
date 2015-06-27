class AddDriverCnh < ActiveRecord::Migration
  def change
  	add_column :drivers, :driver_cnh, :integer
  end
end
