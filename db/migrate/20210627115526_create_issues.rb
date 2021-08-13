class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues,  id: :integer do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :text
      t.string :status

      t.timestamps
    end
  end
end
