class AddForeignKeyToIssues < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :issues, :users
  end
end
