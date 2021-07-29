class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders,  id: :integer do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.float :total_price
      t.integer :room_id
      t.integer :user_id
      t.string :status

      t.timestamps
    end
  end
end
