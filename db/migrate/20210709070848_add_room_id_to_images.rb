class AddRoomIdToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :room_id, :integer
  end
end
