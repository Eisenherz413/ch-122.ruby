class Service < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }

  has_many :room_services
  has_many :rooms, through: :room_services
end
