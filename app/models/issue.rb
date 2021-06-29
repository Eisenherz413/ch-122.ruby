class Issue < ApplicationRecord
  enum status: %i[opened inprogress done]

  belongs_to :category, foreign_key: true
  belongs_to :user, foreign_key: true
end
