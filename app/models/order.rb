class Order < ApplicationRecord
  enum status: %i[free booked busy released]

  belongs_to :room
  belongs_to :user
end
