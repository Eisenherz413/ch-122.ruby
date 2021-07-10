class AddTypeToRoomImages < ActiveRecord::Migration[6.1]
  def change
    add_column :room_images, :type, :string
  end
end
