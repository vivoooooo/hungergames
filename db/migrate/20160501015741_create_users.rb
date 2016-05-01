class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :picture
      t.integer :number_of_kills
      t.timestamps null: false
    end
  end
end
