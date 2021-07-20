class ChangeTypeToFloatPriceRoom < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :price, :float
  end
end
