class CreateRoomServices < ActiveRecord::Migration[6.1]
  def change
    create_table :room_services,  id: :integer do |t|
      t.integer :room_id
      t.integer :service_id

      t.timestamps
    end
  end
end
