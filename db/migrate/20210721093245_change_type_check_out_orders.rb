class ChangeTypeCheckOutOrders < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :check_out, :date
  end
end
