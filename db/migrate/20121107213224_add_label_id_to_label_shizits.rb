class AddLabelIdToLabelShizits < ActiveRecord::Migration
  def change
    add_column :label_shizits, :label_id, :integer
  end
end
