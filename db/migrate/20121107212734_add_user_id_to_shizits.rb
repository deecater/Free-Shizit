class AddUserIdToShizits < ActiveRecord::Migration
  def change
    add_column :shizits, :user_id, :integer
  end
end
