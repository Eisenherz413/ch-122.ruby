class ChangeTypesRoomsServices < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms_services, :room_id, :bigint
    change_column :rooms_services, :service_id, :bigint
  end
end
