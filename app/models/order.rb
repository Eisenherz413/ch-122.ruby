class Order < ApplicationRecord
  enum status: %i[processed confirmed completed cancelled]
  belongs_to :room
  belongs_to :user

end
