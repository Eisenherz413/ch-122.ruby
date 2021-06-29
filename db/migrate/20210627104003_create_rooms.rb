class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.numeric :capacity
      t.float :price
      t.string :number

      t.timestamps
    end
  end
end
