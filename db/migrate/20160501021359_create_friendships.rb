class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :killer_id
      t.integer :victim_id
      t.integer :weapon_id
      t.timestamps null: false
    end
  end
end
