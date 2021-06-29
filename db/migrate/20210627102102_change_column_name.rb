class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :name, :full_name
  end
end
