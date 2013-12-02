class ChangeUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :midle_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :avatar, :text, :limit => 1024
  	add_column :users, :country, :string
  	add_column :users, :date_of_birth, :datetime
  	add_column :users, :phone, :text, :limit => 50
  	add_column :users, :access_token, :text, :limit => 1024
  	add_column :users, :id_gcm, :text, :limit => 1024
  	add_column :users, :device_token, :text, :limit => 512
  	add_column :users, :socket, :text, :limit => 512
  	add_column :users, :longitude, :float
  	add_column :users, :latitude, :float

    add_index :users, :user_name
    add_index :users, :latitude
    add_index :users, :longitude
  end
end
