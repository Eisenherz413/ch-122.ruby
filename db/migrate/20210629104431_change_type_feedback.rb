class ChangeTypeFeedback < ActiveRecord::Migration[6.1]
  def change
    change_column :feedbacks, :user_id, :integer
  end
end
