class RenameColumnTypeRoomImages < ActiveRecord::Migration[6.1]
  def change
    rename_column :room_images, :type, :purpose
  end
end
