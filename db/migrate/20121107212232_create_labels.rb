class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
