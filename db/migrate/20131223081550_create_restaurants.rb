class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.float :rating

      t.timestamps
    end
  end
end
