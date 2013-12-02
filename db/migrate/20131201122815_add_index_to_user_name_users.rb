class AddIndexToUserNameUsers < ActiveRecord::Migration
  def change
    add_index :users, :password
  end
end
