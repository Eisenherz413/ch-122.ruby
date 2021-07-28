class CreateRoomServices < ActiveRecord::Migration[6.1]
  def change
    create_table :room_services do |t|
      t.bigint :room_id
      t.bigint :service_id

      t.timestamps
    end
  end
end
