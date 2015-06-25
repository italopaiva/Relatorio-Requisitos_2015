class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :unit_id
      t.string :unit_name
      t.string :responsible
      t.string :address
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
