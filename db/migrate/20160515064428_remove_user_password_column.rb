class RemoveUserPasswordColumn < ActiveRecord::Migration
  def down
    remove_column :users, :password
  end
end
