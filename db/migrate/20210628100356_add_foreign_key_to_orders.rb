class AddForeignKeyToOrders < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :orders, :users
    add_foreign_key :orders, :rooms
  end
end
