class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services,  id: :integer do |t|
      t.string :name
      t.text :description
      t.string :icon_url

      t.timestamps
    end
  end
end
