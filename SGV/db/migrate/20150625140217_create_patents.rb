class CreatePatents < ActiveRecord::Migration
  def change
    create_table :patents do |t|
      t.integer :patent_id
      t.string :patent_name

      t.timestamps null: false
    end
  end
end
