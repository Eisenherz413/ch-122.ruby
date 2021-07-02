class ChangeTypeOfStatusIssues < ActiveRecord::Migration[6.1]
  def change
    change_column :issues, :status, :integer, default: 0
  end
end
