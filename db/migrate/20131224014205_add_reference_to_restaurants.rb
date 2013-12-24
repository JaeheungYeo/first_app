class AddReferenceToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :reference, :string
    add_index :restaurants, :reference, unique: true
  end
end
