class ChangeTypesRooms < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :capacity, :integer
  end
end
