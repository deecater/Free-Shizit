class AddShizitIdToLabelShizits < ActiveRecord::Migration
  def change
    add_column :label_shizits, :shizit_id, :integer
  end
end
