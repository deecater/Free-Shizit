class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :id
      t.boolean :option

      t.timestamps
    end
  end
end
