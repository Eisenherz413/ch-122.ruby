class Room < ApplicationRecord
  validates :number, uniqueness: true, presence: true

  has_many :orders
  has_many :room_service
  has_many :service, through: :room_service
end
