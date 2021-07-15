class DeleteColumnFromImages < ActiveRecord::Migration[6.1]
  def change
    remove_column :images, :data
  end
end
