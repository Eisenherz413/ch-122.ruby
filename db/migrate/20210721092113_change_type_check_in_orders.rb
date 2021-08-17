class ChangeTypeCheckInOrders < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :check_in, :date
  end
end
