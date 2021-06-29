class RoomService < ApplicationRecord
  belongs_to :room, index: true, foreign_key: true
  belongs_to :service, index: true, foreign_key: true
end
