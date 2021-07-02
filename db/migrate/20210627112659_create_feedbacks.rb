class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :text
      t.numeric :user_id
      t.numeric :starts

      t.timestamps
    end
  end
end
