class Order < ApplicationRecord
  belongs_to :room, index: true, foreign_key: true
  belongs_to :user, index: true, foreign_key: true
end
