class AddIndexToRestaurant < ActiveRecord::Migration
  def change
    add_index :restaurants, :name, unique: false
    add_index :restaurants, :longitude, unique: false
    add_index :restaurants, :latitude, unique: false
    add_index :restaurants, :rating, unique: false
  end
end
