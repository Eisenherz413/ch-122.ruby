class ChangeTypesRoomsServices < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms_services, :room_id, :integer
    change_column :rooms_services, :service_id, :integer
  end
end
