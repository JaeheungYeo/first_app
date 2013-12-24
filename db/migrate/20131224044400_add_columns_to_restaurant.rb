class AddColumnsToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :device_id, :string
    add_column :restaurants, :device_description, :string
  end
end
