class CreateImagesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :name
    end
  end
end
