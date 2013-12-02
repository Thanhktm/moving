class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :seats
      t.text :avatar, :limit => 512
      t.string :license
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
    add_index :cars, :seats
    add_index :cars, :longitude
    add_index :cars, :latitude
  end
end
