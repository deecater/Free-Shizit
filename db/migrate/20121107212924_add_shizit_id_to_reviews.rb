class AddShizitIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :shizit_id, :integer
  end
end
