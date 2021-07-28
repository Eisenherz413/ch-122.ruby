class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.bigint :category_id
      t.bigint :user_id
      t.string :text
      t.string :status

      t.timestamps
    end
  end
end
