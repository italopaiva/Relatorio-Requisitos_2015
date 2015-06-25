class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name_user
      t.string :login_user
      t.string :password_user
      t.string :email_user

      t.timestamps null: false
    end
  end
end
