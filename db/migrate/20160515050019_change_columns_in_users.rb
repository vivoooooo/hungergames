class ChangeColumnsInUsers < ActiveRecord::Migration
  def change
    change_column_null :users, :name, false
    change_column_null :users, :email, false
    change_column_null :users, :password, false
  end
end
