class CreateDriversLicenses < ActiveRecord::Migration
  def change
    create_table :drivers_licenses do |t|
		t.integer :license_id
		t.string :license_type
    end
  end
end
