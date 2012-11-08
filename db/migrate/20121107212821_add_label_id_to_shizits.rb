class AddLabelIdToShizits < ActiveRecord::Migration
  def change
    add_column :shizits, :label_id, :integer
  end
end
