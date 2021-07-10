class RemoveImageIdFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :image_id
  end
end
