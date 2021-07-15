class AddColumnTypeToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :type, :string
  end
end
