class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images,  id: :integer do |t|
      t.string :name
      t.string :path
      t.string :type

      t.timestamps
    end
  end
end
