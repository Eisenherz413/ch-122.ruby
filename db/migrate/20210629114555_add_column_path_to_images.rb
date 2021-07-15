class AddColumnPathToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :path, :string
  end
end
