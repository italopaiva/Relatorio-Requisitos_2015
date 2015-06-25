class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_login
      t.string :user_password
      t.string :user_patent

      t.timestamps null: false
    end
  end
end
