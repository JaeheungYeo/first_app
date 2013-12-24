class DeleteUser < ActiveRecord::Migration
  def change
    drop_table :users
    drop_table :visits
  end
end
