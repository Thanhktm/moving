class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.string :about
      t.string :facebook_id
      t.string :facebook_token

      t.timestamps
    end
  end
end
