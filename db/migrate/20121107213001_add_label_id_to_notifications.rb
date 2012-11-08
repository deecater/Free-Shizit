class AddLabelIdToNotifications < ActiveRecord::Migration
  def change
    add_column :notifications, :label_id, :integer
  end
end
