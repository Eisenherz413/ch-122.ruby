class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.numeric :category_id
      t.numeric :user_id
      t.string :text
      t.string :status

      t.timestamps
    end
  end
end
