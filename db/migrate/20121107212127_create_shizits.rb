class CreateShizits < ActiveRecord::Migration
  def change
    create_table :shizits do |t|
      t.integer :id
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :street_line1
      t.string :street_line2
      t.string :city
      t.string :state
      t.string :zipcode
      t.text :description
      t.string :promotion

      t.timestamps
    end
  end
end
