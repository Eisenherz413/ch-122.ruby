class CreateRoomImagesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :room_images do |t|
      t.numeric :room_id
      t.numeric :image_id

      t.timestamps
    end
  end
end
