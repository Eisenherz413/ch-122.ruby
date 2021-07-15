class AddColumnToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :data, :blob
  end
end
