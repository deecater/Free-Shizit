class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :password
      t.string :zipcode
      t.string :email

      t.timestamps
    end
  end
end
