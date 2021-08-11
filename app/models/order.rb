class Order < ApplicationRecord
  enum status: {processed: 1, confirmed: 2, completed: 3, cancelled: 4}
  belongs_to :room
  belongs_to :user

end
