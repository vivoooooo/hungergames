class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.string :email, null: false
      t.string :password, null: false
      t.string :picture
      t.integer :number_of_kills, null: false, default: 0
      t.timestamps null: false
    end
  end
end
