class ChangeTypesIssues < ActiveRecord::Migration[6.1]
  def change
    change_column :issues, :category_id, :bigint
    change_column :issues, :user_id, :bigint
  end
end
