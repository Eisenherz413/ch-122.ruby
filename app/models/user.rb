class User < ApplicationRecord
  validates :full_name, uniqueness: { case_sensitive: false }, length: { minimum: 2 }

  has_many :issues
  has_many :feedbacks
  has_many :orders
end
