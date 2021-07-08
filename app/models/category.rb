# frozen_string_literal: true
class Category < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: false }
  has_many :issues
  enum name: %i[Advice Breakage Urgent Other]
end
