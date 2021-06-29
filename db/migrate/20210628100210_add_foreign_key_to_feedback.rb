class AddForeignKeyToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :feedbacks, :users
  end
end
