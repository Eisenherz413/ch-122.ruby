class CreateRoomImagesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :room_images do |t|
      t.bigint :room_id
      t.bigint :image_id

      t.timestamps
    end
  end
end
