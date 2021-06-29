class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.float :total_price
      t.numeric :room_id
      t.numeric :user_id
      t.string :status

      t.timestamps
    end
  end
end
