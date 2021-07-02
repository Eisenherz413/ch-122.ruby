class AddForeignKeyToIssuesCategory < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :issues, :categories
  end
end
