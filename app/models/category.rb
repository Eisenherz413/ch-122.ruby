# frozen_string_literal: true
class Category < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: false }
  validates :description, length: { maximum: 300 }
  validates  :description, format: { with: /\A\D([A-z0-9])/, message:  "should not start from a digit" }
  has_many :issues
  enum name: %i[Advice Breakage Urgent Other]
end
