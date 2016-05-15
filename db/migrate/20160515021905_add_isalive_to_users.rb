class AddIsaliveToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_alive, :boolean
  end
end
