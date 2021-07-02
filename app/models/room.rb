class Room < ApplicationRecord
  has_many :orders
  has_many :room_services
  has_many :services, through: :room_services
end
