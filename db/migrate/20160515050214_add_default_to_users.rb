class AddDefaultToUsers < ActiveRecord::Migration
  def change
    change_column_default :users, :number_of_kills, 0
    change_column_default :users, :is_alive, true
  end
end
