class RemoveUserPassswordDigest < ActiveRecord::Migration
  def down
    remove_column :users, :password_digest
  end
end
