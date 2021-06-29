class RenameStartsToStars < ActiveRecord::Migration[6.1]
  def change
    rename_column :feedbacks, :starts, :stars
  end
end
