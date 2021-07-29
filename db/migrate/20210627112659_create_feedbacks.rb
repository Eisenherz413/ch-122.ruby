class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks,  id: :integer do |t|
      t.string :text
      t.integer :user_id
      t.numeric :starts

      t.timestamps
    end
  end
end
