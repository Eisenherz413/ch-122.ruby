class ChangeTableRoomServices < ActiveRecord::Migration[6.1]
  def change
    rename_table :room_services, :rooms_services
  end
end
