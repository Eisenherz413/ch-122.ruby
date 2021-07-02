class ChangeTypesUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :role, :integer
    change_column :users, :status, :integer
  end
end
