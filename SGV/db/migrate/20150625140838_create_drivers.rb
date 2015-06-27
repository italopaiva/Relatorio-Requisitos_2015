class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.integer :driver_id
      t.string :driver_license
      t.integer :has_course
      t.integer :course_year
      t.string :license_expiration

      t.timestamps null: false
    end
  end
end
