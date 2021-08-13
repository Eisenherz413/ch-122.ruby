class CreateRoomImagesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :room_images,  id: :integer do |t|
      t.integer :room_id
      t.integer :image_id

      t.timestamps
    end
  end
end
