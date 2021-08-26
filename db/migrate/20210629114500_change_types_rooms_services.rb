class ChangeTypesRoomsServices < ActiveRecord::Migration[6.1]
  def change
    change_column :room_services, :room_id, :integer
    change_column :room_services, :service_id, :integer
  end
end
