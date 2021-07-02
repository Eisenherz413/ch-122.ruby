class CreateRoomServices < ActiveRecord::Migration[6.1]
  def change
    create_table :room_services do |t|
      t.numeric :room_id
      t.numeric :service_id

      t.timestamps
    end
  end
end
