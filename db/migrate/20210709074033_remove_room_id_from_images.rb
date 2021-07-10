class RemoveRoomIdFromImages < ActiveRecord::Migration[6.1]
  def change
    remove_column :images, :room_id
  end
end
