class ChangeTypesOrders < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :room_id, :integer
    change_column :orders, :user_id, :integer
    change_column :orders, :status, :integer
  end
end
