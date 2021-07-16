class Room < ApplicationRecord
  validates :number, uniqueness: true, presence: true

  has_many :orders
  has_many :room_services
  has_many :services, through: :room_services

  has_many :room_images
end
