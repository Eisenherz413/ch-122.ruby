class Image < ApplicationRecord
  has_many :room_images
  has_many :rooms, through: :room_images
end
