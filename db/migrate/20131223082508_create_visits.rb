class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :device_id
      t.string :device_description
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
